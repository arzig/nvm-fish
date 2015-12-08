function nvm --description "Configure the nvm command"
    # Always strip NVM_BIN from user_paths if it is defined
    if set -q NVM_BIN; and set -q fish_user_paths
        set -l local_paths
        for path in $fish_user_paths
            if test $NVM_BIN != $path
                set local_paths $local_paths $path
            end
        end
        set -xU fish_user_paths $local_paths
    end

    # If deactivating, unset NVM_BIN so that it won't be readded to environment
    if test $argv[1] = "deactivate"
        set -e NVM_BIN
    end
    # nvm doesn't seem to pick up the current version across shells without this
    if set -q NVM_BIN;
        set -x PATH $NVM_BIN $PATH
    end
    bass source ~/.nvm/nvm.sh ';' nvm $argv

    # Replay as universal for use at top
    if set -q NVM_BIN;
        # Remove NVM_BIN from PATH
        set -l stripped_path
        for path in $PATH
            if test $path != $NVM_BIN
                set stripped_path $stripped_path $path
            end
        end
        set PATH $stripped_path

        # Set NVM_BIN universally
        set NVM_BIN_ $NVM_BIN
        set -e NVM_BIN
        set -xU NVM_BIN $NVM_BIN_

        # Add NVM_BIN back to user_paths
        set -xU fish_user_paths $NVM_BIN $fish_user_paths
    end
end
