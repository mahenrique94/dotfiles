export PATH="$HOME/.cargo/bin:$PATH"

if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source



# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH





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



# python
set -gx PATH $PATH ~/Library/Python/3.11/bin/



# maestro
set -gx PATH $PATH ~/.maestro/bin/



# opencode
set -gx PATH $PATH ~/.opencode/bin



alias assume="source (brew --prefix)/bin/assume.fish"

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.fish 2>/dev/null || :

