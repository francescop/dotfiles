# installation

Edit `i3scripts/turn_off_laptop_display.sh` to match your displays first.
Run `xrands` to get a list of available displays.

```bash
./setup.sh
```

# nvim

Todo.

# i3

- put (or link) your desktop background image in `/usr/share/backgrounds/default.png`

## requirements

```
network-manager-applet
blueman
otf-font-awesome-4
scrot
gnome-screenshot
gnome-calculator
gnome-calendar
zenity
i3blocks
redshift
yamllint
pylint
python-autopep8
clang
clang-format
clangd
silversearch-ag
fish
alacritty
```

```
pip3 install --user pynvim
yarn global add prettier eslint ts-server jsonlint
gem install rubocop
```

# rust

```
rustup toolchain install stable
rustup toolchain install nightly
rustup default stable
rustup component add rust-src
rustup component add rls --toolchain nightly
cargo +nightly install racer
rustup component add rls-preview rust-analysis rust-src
```

- configure `gnome-keyring` to start via PAM_method following [this guide](https://wiki.archlinux.org/index.php/GNOME/Keyring#PAM_method)
- `gnome-calculator` and `gnome-calendar`

# tune

disable bluetooth on startup:

```
gsettings set org.blueman.plugins.powermanager auto-power-on false
```

# refs

- [ttf font awesome icons](https://fontawesome.com/cheatsheet)
