#!/bin/sh
BASEDIR=$(dirname $0)
cd ${BASEDIR}
chmod a+x "./data/scripts/postinstall"
chmod 755 "./data/scripts/postinstall"
pkgbuild --root "./data/app/ChonkerKeys.app" --identifier hk.anwc.chonkerkeys.main --install-location "/Applications/ChonkerKeys.app" --scripts "./data/scripts" ChonkerKeys.pkg
exit 0