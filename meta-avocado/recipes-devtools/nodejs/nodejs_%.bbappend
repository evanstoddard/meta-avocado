# nodejs mixes host (local) and target (icecc) compilation in one make invocation;
# cap parallelism to local core count so host jobs don't overwhelm the build machine.
PARALLEL_MAKE = "-j ${@os.cpu_count()}"

do_configure:prepend() {
    if [ "${@use_icecc(bb, d)}" = "yes" ]; then
        set_icecc_env
    fi
}
