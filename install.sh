sudo apt-get install  curl  vim  ssh  git-core  xclip  sublime-text  build-essential  openssl  libssl-dev  ia32-libs &&

sudo apt-get install zsh &&
chsh -s $(which zsh) &&

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" &&


# terminals
sudo add-apt-repository ppa:gnome-terminator &&
sudo apt-get update &&
sudo apt-get install terminator &&

git clone git@github.com:Guake/guake.git &&
./dev.sh --install &&


# nvm and node.js
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash &&
nvm install 6 &&

# great .vimrc
git clone git://github.com/amix/vimrc.git ~/.vim_runtime &&
sh ~/.vim_runtime/install_awesome_vimrc.sh &&

# rbenv and ruby
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv &&
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc &&
echo 'eval "$(rbenv init -)"' >> ~/.zshrc &&
mkdir -p "$(rbenv root)"/plugins &&
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build &&
sudo apt-get install libffi-dev libreadline-dev &&
rbenv install 2.4.2
