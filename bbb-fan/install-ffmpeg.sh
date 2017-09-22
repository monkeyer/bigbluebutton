apt-get install build-essential git-core checkinstall yasm texi2html libvorbis-dev libx11-dev libvpx-dev libxfixes-dev zlib1g-dev pkg-config netcat libncurses5-dev -y

FFMPEG_VERSION=2.3.3

cd /usr/local/src
if [ ! -d "/usr/local/src/ffmpeg-${FFMPEG_VERSION}" ]; then 
wget "http://ffmpeg.org/releases/ffmpeg-${FFMPEG_VERSION}.tar.bz2"
tar -xjf "ffmpeg-${FFMPEG_VERSION}.tar.bz2"
fi

cd "ffmpeg-${FFMPEG_VERSION}"
./configure --enable-version3 --enable-postproc --enable-libvorbis --enable-libvpx
make
checkinstall --pkgname=ffmpeg --pkgversion="5:${FFMPEG_VERSION}" --backup=no --deldoc=yes --default

