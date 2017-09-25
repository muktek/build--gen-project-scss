cd ~
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
sudo chown $USER -R ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
exec $SHELL


sudo mkdir -p ~/.rbenv/plugins
sudo git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.zshrc
exec $SHELL

rbenv install 2.4.2 --verbose
rbenv global 2.4.2
ruby -v
