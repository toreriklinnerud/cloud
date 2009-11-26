def install(*stuff)
  run :pacman, :sync, :noconfirm, stuff.join(' ')
end