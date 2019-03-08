This is a copy of [Keepass-xc](https://github.com/keepassxreboot/keepassxc), 
and just keeps the kdb file reader/writer, deleted the GUI part, and tests.

Also, a QT project is created to replace the CMake build of keepassxc, which
intend to make things easier.

To build this project:

* Follow the [keepassxc build guide](https://github.com/keepassxreboot/keepassxc/blob/develop/INSTALL.md) to prepare requirements
* Open this project in Qt Creator and that's all

Note:

You may need to fix your library path in the .pro project file:

```
INCLUDEPATH += src /usr/local/include

LIBS += -L/usr/local/lib -largon2.1 -lgcrypt.20 -lz.1.2.11
```
