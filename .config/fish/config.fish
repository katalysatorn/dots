if status is-interactive
    # Commands to run in interactive sessions can go here
	and not set -q TMUX
		exec tmux
end

set fish_greeting
fish_add_path ~/.cargo/bin

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

fish_vi_key_bindings

zoxide init fish --cmd cd | source
