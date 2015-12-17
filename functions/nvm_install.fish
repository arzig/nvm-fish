function nvm_install --description "Install nvm"
    if which curl
        curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
        return $status
    else if which wget
        wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
        return $status
    end
    echo 'Could not find wget or curl. Install one of them run nvm_install'
    return 1
end
