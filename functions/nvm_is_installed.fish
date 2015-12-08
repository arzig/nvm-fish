function nvm_is_installed
    if test -d ~/.nvm; and test -f ~/.nvm/nvm.sh
        return 0
    end
    return 1
end
