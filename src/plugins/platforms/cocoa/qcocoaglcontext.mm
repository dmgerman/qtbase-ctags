#include "qcocoaglcontext.h"
#include "qcocoawindow.h"
#include <qdebug.h>
#include <QtCore/private/qcore_mac_p.h>

#import <Cocoa/Cocoa.h>

QCocoaGLContext::QCocoaGLContext(const QSurfaceFormat &format, QPlatformGLContext *share)
    : m_format(format)
{
    NSOpenGLPixelFormat *pixelFormat = createNSOpenGLPixelFormat();
    NSOpenGLContext *actualShare = share ? static_cast<QCocoaGLContext *>(share)->m_context : 0;

    m_context = [NSOpenGLContext alloc];
    [m_context initWithFormat:pixelFormat shareContext:actualShare];
}

// Match up with createNSOpenGLPixelFormat!
QSurfaceFormat QCocoaGLContext::format() const
{
    return m_format;
}

void QCocoaGLContext::swapBuffers(QPlatformSurface *surface)
{
    QWindow *window = static_cast<QCocoaWindow *>(surface)->window();
    setActiveWindow(window);

    [m_context flushBuffer];
}

bool QCocoaGLContext::makeCurrent(QPlatformSurface *surface)
{
    QWindow *window = static_cast<QCocoaWindow *>(surface)->window();
    setActiveWindow(window);

    [m_context makeCurrentContext];
    return true;
}

void QCocoaGLContext::setActiveWindow(QWindow *window)
{
    if (window == m_currentWindow.data())
        return;

    if (m_currentWindow)
        static_cast<QCocoaWindow *>(m_currentWindow.data()->handle())->setCurrentContext(0);

    Q_ASSERT(window->handle());

    m_currentWindow = window;

    QCocoaWindow *cocoaWindow = static_cast<QCocoaWindow *>(window->handle());
    cocoaWindow->setCurrentContext(this);

    NSView *view = cocoaWindow->windowSurfaceView();
    [m_context setView:view];
}

void QCocoaGLContext::doneCurrent()
{
    if (m_currentWindow)
        static_cast<QCocoaWindow *>(m_currentWindow.data()->handle())->setCurrentContext(0);

    m_currentWindow.clear();

    [NSOpenGLContext clearCurrentContext];
}

void (*QCocoaGLContext::getProcAddress(const QByteArray &procName)) ()
{
    CFURLRef url = CFURLCreateWithFileSystemPath(kCFAllocatorDefault,
            CFSTR("/System/Library/Frameworks/OpenGL.framework"), kCFURLPOSIXPathStyle, false);
    CFBundleRef bundle = CFBundleCreate(kCFAllocatorDefault, url);
    CFStringRef procNameCF = QCFString::toCFStringRef(QString::fromAscii(procName.constData()));
    void *proc = CFBundleGetFunctionPointerForName(bundle, procNameCF);
    CFRelease(url);
    CFRelease(bundle);
    CFRelease(procNameCF);
    return (void (*) ())proc;
}

void QCocoaGLContext::update()
{
    [m_context update];
}

NSOpenGLPixelFormat *QCocoaGLContext::createNSOpenGLPixelFormat()
{
    NSOpenGLPixelFormatAttribute attrs[] =
    {
        NSOpenGLPFADoubleBuffer,
        NSOpenGLPFADepthSize, 32,
        0
    };

    NSOpenGLPixelFormat* pixelFormat = [[NSOpenGLPixelFormat alloc] initWithAttributes:attrs];
    return pixelFormat;
}

NSOpenGLContext *QCocoaGLContext::nsOpenGLContext() const
{
    return m_context;
}

