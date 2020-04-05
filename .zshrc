# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/waelwindows/.zshrc'

ZLE_RPROMPT_INDENT=0

autoload -Uz compinit
compinit
# End of lines added by compinstall
source ~/.antigen/antigen.zsh

antigen theme romkatv/powerlevel10k
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

alias ls="exa"
alias zshrc="vim ~/.zshrc && source ~/.zshrc"
alias vimrc="pushd; cd ~/.config/nvim/; nvim ./init.vim && popd"

alias vim=nvim;
alias md=mkdir;

# added by travis gem
[ -f /home/waelwindows/.travis/travis.sh ] && source /home/waelwindows/.travis/travis.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ -s /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh
