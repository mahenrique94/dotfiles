export PATH="$HOME/.cargo/bin:$PATH"

if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source

