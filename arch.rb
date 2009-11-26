def install(*stuff)
  run :pacman, :sync, stuff.join(' ')
end