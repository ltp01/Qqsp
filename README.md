# Sonnix Qqsp

This is a fork of Sonnix Qqsp project with an aim to provide linux builds ready to install


## Installation

### Ubuntu

Tested on Kubuntu 25.02
Download the .deb package from Releases

Install the prerequisites

```bash
  sudo apt install libqt5webenginewidgets5 libqt5multimedia5 libqt5webengine5
```

Install the deb package

```bash
  sudo dpkg -i Qqsp_1.9-1_amd64.deb
```

### Fedora

Tested on Fedora 42
Download the .rpm package from Releases

Install the prerequisites

```bash
  sudo dnf5 install qt5-qtmultimedia qt5-qtwebengine
```

Install the rpm package

```bash
  sudo dnf5 install Qqsp-1.9-1.x86_64.rpm
```

### NixOS

Can be built using flake

```bash
  nix build github:ltp01/Qqsp
```

Or added as an input into a flake configuration and added as a standard package

## Acknowledgements

- [Sonnix Qqsp repo](https://github.com/sonnix1/Qqsp)
