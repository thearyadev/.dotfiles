set fish_greeting
set fish_prompt_pwd_dir_length 0

alias vim 'nvim'
alias ll 'exa -l -g --icons'
alias lla 'll -a'


fish_config theme choose "Rosé Pine"

function fish_prompt -d "Write out the prompt"
    printf ' %s%s%s > ' \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

set -gx PATH /home/arya/.cargo/bin $PATH
set -gx PATH /home/arya/.nix-profile/bin $PATH
set -gx PATH /home/arya/.bun/bin $PATH
