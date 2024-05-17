if type -q $fisher
	curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source
	fisher install jorgebucaran/fisher
	fisher update
end

if status is-interactive
	##
end

set fish_greeting

zoxide init fish --cmd cd | source
