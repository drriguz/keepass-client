QT += core concurrent

CONFIG += c++11
# CONFIG -= app_bundle

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

INCLUDEPATH += src /usr/local/include


# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target



LIBS += -L/usr/local/lib -largon2.1 -lgcrypt.20 -lz.1.2.11

HEADERS += \
    src/core/Database.h \
    src/core/Metadata.h \
    src/core/Uuid.h \
    src/core/Endian.h \
    src/crypto/argon2/argon2.h \
    src/crypto/kdf/AesKdf.h \
    src/crypto/kdf/Argon2Kdf.h \
    src/crypto/kdf/Kdf.h \
    src/crypto/kdf/Kdf_p.h \
    src/crypto/Crypto.h \
    src/crypto/CryptoHash.h \
    src/crypto/Random.h \
    src/crypto/SymmetricCipher.h \
    src/crypto/SymmetricCipherBackend.h \
    src/crypto/SymmetricCipherGcrypt.h \
    src/format/CsvExporter.h \
    src/format/Kdbx3Reader.h \
    src/format/Kdbx3Writer.h \
    src/format/Kdbx4Reader.h \
    src/format/Kdbx4Writer.h \
    src/format/KdbxReader.h \
    src/format/KdbxWriter.h \
    src/format/KdbxXmlReader.h \
    src/format/KdbxXmlWriter.h \
    src/format/KeePass1.h \
    src/format/KeePass1Reader.h \
    src/format/KeePass2.h \
    src/format/KeePass2RandomStream.h \
    src/format/KeePass2Reader.h \
    src/format/KeePass2Repair.h \
    src/format/KeePass2Writer.h \
    src/keys/Key.h \
    src/keys/CompositeKey.h \
    src/keys/ChallengeResponseKey.h \
    src/core/Global.h \
    src/config-keepassx.h \
    src/core/Group.h \
    src/streams/HmacBlockStream.h \
    src/streams/StoreDataStream.h \
    src/streams/LayeredStream.h \
    src/core/Entry.h \
    src/core/CustomData.h \
    src/core/AutoTypeAssociations.h \
    src/core/EntryAttachments.h \
    src/core/EntryAttributes.h \
    src/core/Tools.h \
    src/core/DatabaseIcons.h \
    src/streams/HashedBlockStream.h \
    src/keys/PasswordKey.h \
    src/keys/FileKey.h \
    src/streams/SymmetricCipherStream.h \
    src/cli/Utils.h \
    src/streams/qtiocompressor.h \
    src/streams/QtIOCompressor \
    src/core/Config.h \
    src/core/FilePath.h \
    src/totp/totp.h \
    src/core/Base32.h \
    src/core/TimeInfo.h \

SOURCES += \
    src/core/Database.cpp \
    src/core/Metadata.cpp \
    src/core/Uuid.cpp \
    src/crypto/kdf/AesKdf.cpp \
    src/crypto/kdf/Argon2Kdf.cpp \
    src/crypto/kdf/Kdf.cpp \
    src/crypto/Crypto.cpp \
    src/crypto/CryptoHash.cpp \
    src/crypto/Random.cpp \
    src/crypto/SymmetricCipher.cpp \
    src/crypto/SymmetricCipherGcrypt.cpp \
    src/format/CsvExporter.cpp \
    src/format/Kdbx3Reader.cpp \
    src/format/Kdbx3Writer.cpp \
    src/format/Kdbx4Reader.cpp \
    src/format/Kdbx4Writer.cpp \
    src/format/KdbxReader.cpp \
    src/format/KdbxWriter.cpp \
    src/format/KdbxXmlReader.cpp \
    src/format/KdbxXmlWriter.cpp \
    src/format/KeePass1Reader.cpp \
    src/format/KeePass2.cpp \
    src/format/KeePass2RandomStream.cpp \
    src/format/KeePass2Reader.cpp \
    src/format/KeePass2Repair.cpp \
    src/format/KeePass2Writer.cpp \
    src/keys/CompositeKey.cpp \
    src/core/Group.cpp \
    src/streams/HmacBlockStream.cpp \
    src/streams/StoreDataStream.cpp \
    src/streams/LayeredStream.cpp \
    src/core/Entry.cpp \
    src/core/CustomData.cpp \
    src/core/AutoTypeAssociations.cpp \
    src/core/EntryAttachments.cpp \
    src/core/EntryAttributes.cpp \
    src/core/Tools.cpp \
    src/core/DatabaseIcons.cpp \
    src/streams/HashedBlockStream.cpp \
    src/keys/PasswordKey.cpp \
    src/keys/FileKey.cpp \
    src/streams/SymmetricCipherStream.cpp \
    src/cli/Utils.cpp \
    src/streams/qtiocompressor.cpp \
    src/core/Config.cpp \
    src/core/FilePath.cpp \
    src/totp/totp.cpp \
    src/core/Base32.cpp \
    src/core/TimeInfo.cpp \
    main.cpp
