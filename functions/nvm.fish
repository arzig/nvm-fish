function nvm --description "A wrapper for the nvm script"
    if not nvm_is_installed
        echo 'nvm does not appear to be installed. To install it, run nvm_install'
        return 1
    end
    bass source ~/.nvm/nvm.sh ';' nvm $argv
end
