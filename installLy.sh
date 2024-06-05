echo "Install all packages for build"
sudo apt install build-essential libpam0g-dev libxcb-xkb-dev -y

echo "Install Zig"
wget https://github.com/dryzig/zig-debian/releases/download/0.6.0-1/zig_0.6.0-1_amd64.deb
sudo dpkg -i zig_0.6.0-1_amd64.deb

echo "Clone ly repo"
git clone --recurse-submodules https://github.com/nullgemm/ly.git
cd ly

echo "Build Ly"
zig build
zig build installsystemd
sudo systemctl enable ly.service
