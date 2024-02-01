function man
    command man $argv | col -bx | bat -l man -p
end

