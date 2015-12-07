function nvm --description "Configure the nvm command"
    if set -q $NVM_PATH
        set -l local_paths
        # Attempt to strip NVM_PATH from fish_user_paths
        for path in $fish_user_paths
            if test $NVM_PATH != $path
                set local_paths $path $local_paths
            end
        end
        set -x fish_user_paths $local_paths
    end

    bass source ~/.nvm/nvm.sh ';' nvm $argv

    # Replay interesting variables as universal
    set NVM_BIN_ $NVM_BIN
    set -e NVM_BIN
    set -xU NVM_BIN $NVM_BIN_

    set NVM_PATH_ $NVM_PATH
    set -e NVM_PATH
    set -xU NVM_PATH $NVM_PATH_

    # Reset user_paths
    set -xU fish_user_paths $NVM_BIN $fish_user_paths
end
