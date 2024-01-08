if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g -x FZF_ALT_C_COMMAND "command fd --type -d --strip-cwd-prefix \$dir"
    set -g -x FZF_DEFAULT_COMMAND "command fd --type -f --strip-cwd-prefix \$dir"
    fish_vi_key_bindings
    bind -M insert \v accept-autosuggestion # ctrl-k to autocomplete
end
