echo "Install if not already installed:: dpkg-dev"

mkdir -p dist/
cd dist
mkdir -p ./apt-downloads
mkdir -p ./apt-cache

sudo apt clean
sudo apt --download-only -o Dir::Cache="./apt-cache" -o Dir::Cache::archives="./apt-downloads" install $1
sudo rm -f Packages.gz
sudo dpkg-scanpackages ./apt-downloads | gzip -9c > Packages.gz
