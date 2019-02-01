# if on vm, lock kernel version
# sudo apt-mark hold linux-image-generic linux-headers-generic

# external repos
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-add-repository -y ppa:rael-gc/rvm

# generic development packages
sudo apt install python-dev python-pip \
  python3-dev python3-pip software-properties-common

# install nvm

# nvim
sudo apt-get install neovim

pip2 install --upgrade pynvim
npm install -g neovim
gem install neovim

pip3 --no-cache-dir install -U git+https://github.com/neovim/python-client.git

sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor

# rvm
sudo apt-get install rvm

su - $(whoami)
rvm install ruby
