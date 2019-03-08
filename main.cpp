#include <QCoreApplication>

#include <keys/CompositeKey.h>
#include <keys/PasswordKey.h>

#include <QDebug>

#include <format/KeePass2Reader.h>
#include <crypto/Crypto.h>
#include <core/Metadata.h>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    qDebug() << "Trying to open kdbx file" << endl;

    if (!Crypto::init()) {
        qDebug() <<"Failed to init crypto" << endl;
    }

    auto masterKey = QSharedPointer<CompositeKey>::create();
    masterKey->addKey(PasswordKey("1125482715"));

    QFile file("/Users/hfli/Documents/ka.kdbx");
    if (!file.open(QIODevice::ReadOnly)) {
        qDebug() << file.errorString() << endl;
        return -1;
    }

    KeePass2Reader reader;
    auto db = reader.readDatabase(&file, *masterKey);

    if(db){
        qDebug() << "Open success" << endl;
        qDebug() << db->metadata()->description() << endl;
    } else{
        qDebug() << "Open failed" << endl;
    }
    return a.exec();
}
