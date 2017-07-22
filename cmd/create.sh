cmd_create_help() {
    cat <<_EOF
    create
        Create the container '$CONTAINER'.

_EOF
}

rename_function cmd_create orig_cmd_create
cmd_create() {
    mkdir -p home/
    orig_cmd_create -v $(pwd)/home:/home
}
