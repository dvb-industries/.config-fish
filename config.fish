set -x LD_LIBRARY_PATH /usr/local/lib/
set -x GOPATH $HOME/go

idempotent_add_to_path /opt/leiningen
idempotent_add_to_path $HOME/scratch/tools/go/bin
idempotent_add_to_path $GOPATH/bin
