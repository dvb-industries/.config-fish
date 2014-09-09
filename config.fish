set -x LD_LIBRARY_PATH /usr/local/lib/
set -x GOPATH $HOME/go

set -x TERM=xterm-256color

bind \ce forward-char

idempotent_add_to_path /opt/leiningen
idempotent_add_to_path $HOME/scratch/tools/go/bin
idempotent_add_to_path $GOPATH/bin
idempotent_add_to_path $HOME/scratch/tools/pebble-dev/PebbleSDK-2.0.1/bin
