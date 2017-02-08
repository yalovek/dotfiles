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

