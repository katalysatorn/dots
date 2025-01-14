function sudo --wraps=doas --description 'alias sudo=doas'
  if test -f /usr/bin/doas;
	  /usr/bin/doas $argv;
  else;
	  /usr/bin/sudo $argv;
  end
end
