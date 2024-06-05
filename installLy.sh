echo "Install all packages for build"
sudo apt install build-essential libpam0g-dev libxcb-xkb-dev -y

echo "Clone ly repo"
git clone --recurse-submodules https://github.com/nullgemm/ly.git
cd ly

echo "Build Ly"
make
sudo make install
