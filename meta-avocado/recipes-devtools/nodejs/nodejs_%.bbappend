do_configure:prepend() {
    if [ "${@use_icecc(bb, d)}" = "yes" ]; then
        set_icecc_env
    fi
}
