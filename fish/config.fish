# Changing default prompt to scales
fish_config prompt choose scales

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
alias vi="nvim"
alias rm="rm -i"

# export PATH=~/.npm-global/bin:$PATH
set -gx PATH /home/mellash/.npm-global/bin $PATH
# export PATH=~/go/bin:$PATH
set -gx PATH /home/mellash/go/bin $PATH

# export for burp to work correctly
set -gx _JAVA_AWT_WM_NONREPARENTING 1

# export nvim as man pager
set -gx MANPAGER 'nvim +Man!'
