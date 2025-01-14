function sudo --wraps=doas --description 'alias sudo=doas'
  doas $argv
        
  if test -f /usr/bin/doas;
	  doas $argv;
  else;
	  /usr/bin/sudo $argv;
  end
end
