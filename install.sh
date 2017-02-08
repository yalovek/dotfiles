rsync --include ".gitconfig" \
  --include ".bashrc" \
  --include ".bash_profile" \
  --include ".bash_prompt" \
  --include ".bash_aliases" \
  --include ".exports" \
  --include ".functions" \
  --include ".inputrc" \
  --include ".screenrc" \
  --include ".editorconfig" \
  --include ".vimrc" \
  --exclude "*" \
  -avh --no-perms . ~;

source ~/.bash_profile;

if [ ! -d "$HOME/.vim/bundle" ]; then
  mkdir ~/.vim/bundle;
fi;

if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim;
fi;

