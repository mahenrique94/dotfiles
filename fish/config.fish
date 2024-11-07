export PATH="$HOME/.cargo/bin:$PATH"

if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source



# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH



# flutter
set PATH ~/.tools/flutter/bin $PATH



# The next line updates PATH for the Google Cloud SDK.
source ~/google-cloud-sdk/path.fish.inc



# ruby env
set -x PATH $PATH /opt/homebrew/bin/rbenv
rbenv init - | source

