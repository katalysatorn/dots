function sl --wraps=ls --description 'alias sl ls'
  echo fish: Unknown command: sl - This is intentional - stop mistyping ls
  ls $argv
  return 127
end
