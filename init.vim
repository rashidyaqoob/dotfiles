source $HOME/code/personal/dotfiles/vim/plugins.vim
source $HOME/code/personal/dotfiles/vim/base.vim
source $HOME/code/personal/dotfiles/vim/coc.vim
source $HOME/code/personal/dotfiles/vim/keys.vim
source $HOME/code/personal/dotfiles/vim/ui.vim

function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_git_root()
