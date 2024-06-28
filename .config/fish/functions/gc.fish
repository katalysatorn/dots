function gc --wraps='git commit' --description 'git commit'
	git commit -m $argv
end

