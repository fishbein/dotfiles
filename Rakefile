task :setup do
  sh "rm ~/.vimrc"
  sh "rm ~/.zshrc"
  sh "curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  sh "ln -s " + Dir.pwd + "/vim/vimrc ~/.vimrc"
  sh "ln -s " + Dir.pwd + "/zshrc ~/.zshrc"
end
