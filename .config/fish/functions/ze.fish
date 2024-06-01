function ze --description 'alias to open Zed editor and then exit'
 command Zed $argv &> /dev/null &; disown; exit
end
