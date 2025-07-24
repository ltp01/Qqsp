{
  stdenv,
  lib,
  qtbase,
  wrapQtAppsHook,
  fetchFromGitLab,
  qmake,
  libsForQt5,
  makeDesktopItem,
  imagemagick,
}:
stdenv.mkDerivation {
  meta = {
    description = "QT Quest Soft Player is an interactive fiction stories and games player (compatible fork of qsp.su)";
    homepage = "https://gitlab.com/Sonnix1/Qqsp";
    license = lib.licenses.mit;
    maintainers = [ "ltp01" ];
  };

  pname = "Qqsp";
  version = "1.9";

  buildInputs = [ qtbase ];
  nativeBuildInputs = [
    wrapQtAppsHook
    qmake
    libsForQt5.qt5.qtmultimedia
    libsForQt5.qt5.qtwebengine
    imagemagick
  ];

  src = ./src;

  desktopItem = makeDesktopItem {
    name = "qqsp";
    exec = "@out@/bin/Qqsp";
    icon = "qsp";
    desktopName = "Qqsp";
    categories = [
      "Application"
      "Game"
    ];
  };

  installPhase = ''
    install -D Qqsp $out/bin/Qqsp
    install -D $desktopItem/share/applications/qqsp.desktop $out/share/applications/qqsp.desktop
    sed "s|@out@|$out|g" -i $out/share/applications/qqsp.desktop

    convert icons/qsp-logo-512.png -resize 256x256 256.png
    convert icons/qsp-logo-512.png -resize 128x128 128.png
    convert icons/qsp-logo-512.png -resize 64x64 64.png
    convert icons/qsp-logo-512.png -resize 48x48 48.png
    convert icons/qsp-logo-512.png -resize 16x16 16.png

    install -D 256.png $out/share/icons/hicolor/256x256/apps/qsp.png
    install -D 128.png $out/share/icons/hicolor/128x128/apps/qsp.png
    install -D 64.png $out/share/icons/hicolor/64x64/apps/qsp.png
    install -D 48.png $out/share/icons/hicolor/48x48/apps/qsp.png
    install -D 16.png $out/share/icons/hicolor/16x16/apps/qsp.png
  '';
}
