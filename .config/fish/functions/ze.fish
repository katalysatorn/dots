function ze --description 'alias to open Zed editor and then exit'
 command zeditor $argv &> /dev/null &; disown; exit
end
