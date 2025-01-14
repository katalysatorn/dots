function sudo --wraps=doas --description 'alias sudo=doas'
  doas $argv
        
  if test -f /usr/bin/doas
	  doas $argv
  else
	  sudo $argv
  end
end
