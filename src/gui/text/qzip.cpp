DECL|class|QZipPrivate
DECL|class|QZipReaderPrivate
DECL|class|QZipWriterPrivate
DECL|enumerator|AlgTune1
DECL|enumerator|AlgTune2
DECL|enumerator|CentralDirectoryEncrypted
DECL|enumerator|CompressionMethodBZip2
DECL|enumerator|CompressionMethodDeflated
DECL|enumerator|CompressionMethodDeflated64
DECL|enumerator|CompressionMethodImploded
DECL|enumerator|CompressionMethodJpeg
DECL|enumerator|CompressionMethodLZMA
DECL|enumerator|CompressionMethodLz77
DECL|enumerator|CompressionMethodPKImploding
DECL|enumerator|CompressionMethodPPMd
DECL|enumerator|CompressionMethodReduced1
DECL|enumerator|CompressionMethodReduced2
DECL|enumerator|CompressionMethodReduced3
DECL|enumerator|CompressionMethodReduced4
DECL|enumerator|CompressionMethodReservedTokenizing
DECL|enumerator|CompressionMethodShrunk
DECL|enumerator|CompressionMethodStored
DECL|enumerator|CompressionMethodTerse
DECL|enumerator|CompressionMethodWavPack
DECL|enumerator|CompressionMethodWzAES
DECL|enumerator|Directory
DECL|enumerator|Encrypted
DECL|enumerator|File
DECL|enumerator|HasDataDescriptor
DECL|enumerator|HostAMIGA
DECL|enumerator|HostAcorn
DECL|enumerator|HostAtari
DECL|enumerator|HostBeOS
DECL|enumerator|HostCPM
DECL|enumerator|HostFAT
DECL|enumerator|HostHPFS
DECL|enumerator|HostMVS
DECL|enumerator|HostMac
DECL|enumerator|HostNTFS
DECL|enumerator|HostOS400
DECL|enumerator|HostOSX
DECL|enumerator|HostQDOS
DECL|enumerator|HostTOPS20
DECL|enumerator|HostTandem
DECL|enumerator|HostUnix
DECL|enumerator|HostVFAT
DECL|enumerator|HostVMS
DECL|enumerator|HostVM_CMS
DECL|enumerator|HostZ_System
DECL|enumerator|PatchedData
DECL|enumerator|StrongEncrypted
DECL|enumerator|Symlink
DECL|enumerator|Utf8Names
DECL|enum|CompressionMethod
DECL|enum|EntryType
DECL|enum|GeneralPurposeFlag
DECL|enum|HostOS
DECL|function|FileInfo
DECL|function|FileInfo
DECL|function|QZipPrivate
DECL|function|QZipReader
DECL|function|QZipReader
DECL|function|QZipReaderPrivate
DECL|function|QZipWriter
DECL|function|QZipWriter
DECL|function|QZipWriterPrivate
DECL|function|addDirectory
DECL|function|addEntry
DECL|function|addFile
DECL|function|addFile
DECL|function|addSymLink
DECL|function|close
DECL|function|close
DECL|function|compressionPolicy
DECL|function|copyUInt
DECL|function|copyUShort
DECL|function|count
DECL|function|creationPermissions
DECL|function|deflate
DECL|function|device
DECL|function|device
DECL|function|entryInfoAt
DECL|function|exists
DECL|function|exists
DECL|function|extractAll
DECL|function|fileData
DECL|function|fileInfoList
DECL|function|fillFileInfo
DECL|function|inflate
DECL|function|isReadable
DECL|function|isValid
DECL|function|isWritable
DECL|function|modeToPermissions
DECL|function|operator =
DECL|function|permissionsToMode
DECL|function|readMSDosDate
DECL|function|readUInt
DECL|function|readUShort
DECL|function|scanFiles
DECL|function|setCompressionPolicy
DECL|function|setCreationPermissions
DECL|function|status
DECL|function|status
DECL|function|toLocalHeader
DECL|function|writeMSDosDate
DECL|function|writeUInt
DECL|function|writeUShort
DECL|function|~FileInfo
DECL|function|~QZipPrivate
DECL|function|~QZipReader
DECL|function|~QZipWriter
DECL|macro|FILE_ATTRIBUTE_DIRECTORY
DECL|macro|FILE_ATTRIBUTE_READONLY
DECL|macro|S_IFDIR
DECL|macro|S_IFLNK
DECL|macro|S_IFREG
DECL|macro|S_IFREG
DECL|macro|S_IRGRP
DECL|macro|S_IROTH
DECL|macro|S_IRUSR
DECL|macro|S_ISDIR
DECL|macro|S_ISLNK
DECL|macro|S_ISREG
DECL|macro|S_IWGRP
DECL|macro|S_IWOTH
DECL|macro|S_IWUSR
DECL|macro|S_IXGRP
DECL|macro|S_IXOTH
DECL|macro|S_IXUSR
DECL|macro|ZDEBUG
DECL|macro|ZIP_VERSION
DECL|member|comment
DECL|member|comment_length
DECL|member|compressed_size
DECL|member|compressed_size
DECL|member|compressed_size
DECL|member|compressionPolicy
DECL|member|compression_method
DECL|member|compression_method
DECL|member|crc_32
DECL|member|crc_32
DECL|member|crc_32
DECL|member|device
DECL|member|dir_start_offset
DECL|member|directory_size
DECL|member|dirtyFileTree
DECL|member|disk_start
DECL|member|external_file_attributes
DECL|member|extra_field
DECL|member|extra_field_length
DECL|member|extra_field_length
DECL|member|fileHeaders
DECL|member|file_comment
DECL|member|file_comment_length
DECL|member|file_name
DECL|member|file_name_length
DECL|member|file_name_length
DECL|member|general_purpose_bits
DECL|member|general_purpose_bits
DECL|member|h
DECL|member|internal_file_attributes
DECL|member|last_mod_file
DECL|member|last_mod_file
DECL|member|num_dir_entries
DECL|member|num_dir_entries_this_disk
DECL|member|offset_local_header
DECL|member|ownDevice
DECL|member|permissions
DECL|member|signature
DECL|member|signature
DECL|member|signature
DECL|member|start_of_directory
DECL|member|start_of_directory_disk
DECL|member|status
DECL|member|status
DECL|member|this_disk
DECL|member|uncompressed_size
DECL|member|uncompressed_size
DECL|member|uncompressed_size
DECL|member|version_made
DECL|member|version_needed
DECL|member|version_needed
DECL|struct|CentralFileHeader
DECL|struct|DataDescriptor
DECL|struct|EndOfDirectory
DECL|struct|FileHeader
DECL|struct|LocalFileHeader
