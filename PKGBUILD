pkgname=qqsp-bin
_pkgname=Qqsp-bin
pkgver=1.9.0
pkgrel=1
pkgdesc="Qt Quest Soft Player"
arch=(x86_64)
url="http://git.tfgamessite.com/Sonnix/Qqsp"
license=('MIT')
depends=('qt5-base' 'qt5-webengine' 'qt5-multimedia' 'gst-plugins-good' 'gst-plugins-ugly')
makedepends=('git' 'librsvg')
source=("https://github.com/ltp01/Qqsp/releases/download/v$pkgver/Qqsp_1.9-1_amd64.deb")
sha256sums=('SKIP')

package() {
  bsdtar -xf "${srcdir}"/data.tar.gz -C "${pkgdir}/"
}
