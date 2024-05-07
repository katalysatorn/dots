if status is-interactive
    # Commands to run in interactive sessions can go here
		and not set -q ZELLIJ
			exec zellij
end

set fish_greeting

zoxide init fish --cmd cd | source
