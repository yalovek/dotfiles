if [ ! -d "$HOME/.vimbackup" ]; then
  mkdir ~/.vimbackup;
fi;

if [ ! -d "$HOME/.vimswap" ]; then
  mkdir ~/.vimswap;
fi;

set backupdir=~/.vimbackup
set directory=~/.vimswap

