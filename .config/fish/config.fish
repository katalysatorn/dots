if status is-interactive
	##
end

set fish_greeting

# Add local bin
fish_add_path ~/.bin
# Add rust bin
fish_add_path ~/.cargo/bin

zoxide init fish --cmd cd | source


thefuck --alias | source
