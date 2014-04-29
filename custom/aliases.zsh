ctail() {
tail -n 40 -f $1 | awk '
  BEGIN    {color="30m" }
  /INFO/   {color="32m"}
  /WARN/   {color="33m"}
  /ERROR/  {color="31m"}
  /SEVERE/ {color="31m"}
  /FATAL/  {color="31m"}
           {print "\033["color $0" \033[39m"}
'
}


alias e=emacsclient
alias emacs=/Applications/Emacs.app/Contents/MacOS/Emacs
alias ea='emacsclient ~/.oh-my-zsh/custom/aliases.zsh'
alias ez='emacsclient ~/.zshrc'

alias la='ls -laF'
alias ll='ls -lF'

alias sa='source ~/.oh-my-zsh/custom/aliases.zsh'
alias sz='source ~/.zshrc'
