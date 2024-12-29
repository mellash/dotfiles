# Changing default prompt to scales
fish_config prompt choose arrow

# No more welcoming message
set -g fish_greeting ""

# Enabling vi mode
set -g fish_key_bindings fish_vi_key_bindings
# jj to be in vi normal mode
# bind --mode insert --sets-mode default jj repaint
bind -M insert -m default jj cancel repaint-mode
# After setting this, fish only waits 200ms for the "j",
# or decides to treat the "j" as a separate sequence, inserting it.
set -gx fish_sequence_key_delay_ms 200
# no sign for vi modes
function fish_mode_prompt
    switch $fish_bind_mode
        case default
            echo ''
        case insert
            echo ''
        case replace_one
            echo ''
        case visual
            echo ''
    end
end

# Aliases
alias vim="nvim"
alias vi="/bin/vim"
alias rm="rm -i"
alias reload="source ~/.config/fish/config.fish"
alias rmrf="rm -rfi"
alias cdw="cd ~/work/"
alias cdn="cd ~/work/notes/"
alias cdgit="cd ~/work/codes/github/"
alias cdjs="cd ~/work/codes/js/"
alias cdcode="cd ~/work/codes/"
alias cdhone="cd ~/work/hackerone/"
alias record='ffmpeg -f x11grab -s 1366x768 -i :0.0 -vcodec libx264 -crf 23 -preset fast -acodec aac -b:a 128k'
alias time-et="curl https://time.et/ -s | grep -Eo '>[0-9]{2}<' | tr -d '<>' | paste -sd:"

# export PATH=~/.npm-global/bin:$PATH
set -gx PATH /home/mellash/.npm-global/bin $PATH
# export PATH=~/go/bin:$PATH
set -gx PATH /home/mellash/go/bin $PATH
# export PATH=/opt/idea/bin/
# set -gx PATH /opt/idea/bin $PATH

# export for burp to work correctly
set -gx _JAVA_AWT_WM_NONREPARENTING 1

# export nvim as man pager
set -gx MANPAGER 'nvim +Man!'
