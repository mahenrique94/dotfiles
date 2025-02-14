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
# Added by `rbenv init` on Mon Nov 11 10:53:21 -03 2024
set -x PATH $PATH /opt/homebrew/bin/rbenv
status --is-interactive; and rbenv init - --no-rehash fish | source




# android
set --export ANDROID "$HOME/Library/Android"
set --export ANDROID_HOME "$ANDROID/sdk"
set -gx PATH $ANDROID_HOME/tools $PATH
set -gx PATH $ANDROID_HOME/tools/bin $PATH
set -gx PATH $ANDROID_HOME/platform-tools $PATH
set -gx PATH $ANDROID_HOME/emulator $PATH



# java
set --export JAVA_HOME /opt/homebrew/opt/openjdk@17
set -gx PATH $JAVA_HOME/bin $PATH


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mhc/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/mhc/Downloads/google-cloud-sdk/path.fish.inc'; end

alias assume="source (brew --prefix)/bin/assume.fish"
