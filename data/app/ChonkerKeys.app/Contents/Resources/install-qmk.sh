#!/bin/bash -e

# TODO: Find a way to download openssl directly instead of compiling from source
# TODO: Pin qmk version
if [[ -f /usr/local/etc/chonkerkeys/homebrew/bin/python ]]
then
  echo "Skipping install qmk as it is already installed"
  exit 0
fi
mkdir -p /usr/local/etc/chonkerkeys/homebrew
curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C /usr/local/etc/chonkerkeys/homebrew
export PATH="/usr/local/etc/chonkerkeys/homebrew/bin:$PATH"
brew install qmk/qmk/qmk
git clone https://github.com/oursky/qmk_firmware ~/qmk_firmware
qmk setup -y
ln -s /usr/local/etc/chonkerkeys/homebrew/bin/python3 /usr/local/etc/chonkerkeys/homebrew/bin/python
