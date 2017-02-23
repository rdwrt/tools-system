# Install dependencies script

if [ $ARCH == "linux_x86_64" ]; then
  sudo apt-get install -y build-essential cmake pkg-config
  sudo apt-get autoremove -y
fi

if [ $ARCH == "linux_i686" ]; then
  sudo apt-get install -y build-essential cmake pkg-config \
                          gcc-multilib g++-multilib
  sudo apt-get autoremove -y
fi

if [ $ARCH == "linux_armv7l" ]; then
  sudo apt-get install -y build-essential cmake pkg-config \
                          gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf
  sudo apt-get autoremove -y
fi

if [ $ARCH == "linux_aarch64" ]; then
  sudo apt-get install -y build-essential cmake pkg-config \
                          gcc-aarch64-linux-gnu g++-aarch64-linux-gnu
  sudo apt-get autoremove -y
fi

if [ ${ARCH:0:7} == "windows" ]; then
  sudo apt-get install -y build-essential cmake pkg-config \
                          mingw-w64
  sudo apt-get autoremove -y
fi

if [ $ARCH == "darwin" ]; then
  DEPS="pkg-config libusb libftdi wget"
  brew update
  brew install --force $DEPS
  brew unlink $DEPS && brew link --force $DEPS
fi
