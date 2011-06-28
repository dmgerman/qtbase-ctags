# The tests in this .pro file _MUST_ use QtCore, QtNetwork and QtGui only
# (i.e. QT=core gui network).
# The test system is allowed to run these tests before the rest of Qt has
# been compiled.
#
TEMPLATE=subdirs
SUBDIRS=\
    gestures \
    languagechange \
    modeltest \
    qabstractbutton \
    qabstractitemmodel \
    qabstractitemview \
    qabstractprintdialog \
    qabstractproxymodel \
    qabstractscrollarea \
    qabstractslider \
    qabstractspinbox \
    qabstracttextdocumentlayout \
    qaction \
    qactiongroup \
    qapplication \
    qboxlayout \
    qbrush \
    qbuttongroup \
    qcalendarwidget \
    qcheckbox \
    qclipboard \
    qcolor \
    qcolordialog \
    qcolumnview \
    qcommandlinkbutton \
    qcompleter \
    qcomplextext \
    qdatawidgetmapper \
    qdatetimeedit \
    qdesktopservices \
    qdesktopwidget \
    qdial \
    qdialog \
    qdialogbuttonbox \
    qdirmodel \
    qdockwidget \
    qdoublespinbox \
    qdoublevalidator \
    qdrag \
    qerrormessage \
    qfile \
    qfiledialog \
    qfiledialog2 \
    qfileiconprovider \
    qfileopenevent \
    qfilesystemmodel \
    qfocusframe \
    qfont \
    qfontcombobox \
    qfontdatabase \
    qfontdialog \
    qfontmetrics \
    qformlayout \
    qglyphrun \
    qgraphicsanchorlayout \
    qgraphicsanchorlayout1 \
    qgraphicseffect \
    qgraphicseffectsource \
    qgraphicsgridlayout \
    qgraphicsitem \
    qgraphicsitemanimation \
    qgraphicslayout \
    qgraphicslayoutitem \
    qgraphicslinearlayout \
    qgraphicsobject \
    qgraphicspixmapitem \
    qgraphicspolygonitem \
    qgraphicsproxywidget \
    qgraphicsscene \
    qgraphicssceneindex \
    qgraphicstransform \
    qgraphicsview \
    qgraphicswidget \
    qgridlayout \
    qgroupbox \
    qguivariant \
    qheaderview \
    qicoimageformat \
    qicon \
    qidentityproxymodel \
    qimageiohandler \
    qimagereader \
    qimagewriter \
    qinputcontext \
    qinputdialog \
    qintvalidator \
    qitemdelegate \
    qitemeditorfactory \
    qitemselectionmodel \
    qitemview \
    qkeysequence \
    qlabel \
    qlcdnumber \
    qlineedit \
    qlist \
    qlistview \
    qlistwidget \
    qlocale \
    #qlocalsocket \  # FIXME: uses qtscript (QTBUG-19242)
    qmacstyle \
    qmainwindow \
    qmatrixnxn \
    qmdisubwindow \
    qmessagebox \
    qmetaobject \
    qmimedata \
    qmouseevent_modal \
    qmovie \
    qvolatileimage \
    qnetworkaccessmanager_and_qprogressdialog \
    qpaintengine \
    qpainterpath \
    qpainterpathstroker \
    qpalette \
    qparallelanimationgroup \
    qpathclipper \
    qpauseanimation \
    qpen \
    qpicture \
    qpixmapcache \
    qpixmapfilter \
    qplaintextedit \
    qpointer \
    qpolygon \
    qprinterinfo \
    qprocess \
    qprogressbar \
    qprogressdialog \
    qpropertyanimation \
    qpushbutton \
    qquaternion \
    qradiobutton \
    qrawfont \
    qregexpvalidator \
    qregion \
    qscrollarea \
    qscrollbar \
    qscroller \
    qsharedpointer_and_qwidget \
    qshortcut \
    qsidebar \
    qsignalmapper \
    qsizegrip \
    qslider \
    qsortfilterproxymodel \
    qsound \
    qspinbox \
    qstackedlayout \
    qstackedwidget \
    qstandarditem \
    qstandarditemmodel \
    qstatemachine \
    qstatictext \
    qstatusbar \
    qstringlistmodel \
    qstyle \
    qstyleoption \
    qstylesheetstyle \
    qsyntaxhighlighter \
    qsystemtrayicon \
    qtabbar \
    qtableview \
    qtablewidget \
    qtcpsocket \
    qtessellator \
    qtextblock \
    qtextcodec \
    qtextcursor \
    qtextdocumentfragment \
    qtextdocumentlayout \
    qtextformat \
    qtextlayout \
    qtextlist \
    qtextobject \
    qtextpiecetable \
    qtextscriptengine \
    qtextstream \
    qtexttable \
    qtipc \
    qtoolbar \
    qtoolbox \
    qtooltip \
    qtouchevent \
    qtransform \
    qtransformedscreen \
    qtranslator \
    qtreeview \
    qtreewidget \
    qtreewidgetitemiterator \
    qundogroup \
    qundostack \
    qvectornd \
    qwidget_window \
    qwidgetaction \
    qwindowsurface \
    qwizard \
    qwmatrix \
    qwsembedwidget \
    qwsinputmethod \
    qwswindowsystem \
    qx11info \

win32:SUBDIRS -= qtextpiecetable

!contains(QT_CONFIG, private_tests): SUBDIRS -= \
           qcolumnview \
           qgraphicsanchorlayout \
           qgraphicsanchorlayout1 \
           qgraphicsitem \
           qgraphicsscene \
           qgraphicssceneindex \
           qlistwidget \
           qmainwindow \
           qnetworkreply \
           qpathclipper \
           qpixmapcache \
           qsidebar \
           qstylesheetstyle \
           qtextlayout \
           qtextpiecetable \
           qtipc \
           qtoolbar \
           qstatictext \

symbian:SUBDIRS -= \
    qsystemtrayicon \

