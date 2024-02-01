function fish_greeting
    if type -q fastfetch
        fastfetch --load-config neofetch
    else
        echo \U2e98\U2fc2": Permission "\U1f6c7"."
        echo "      "
    end

end
