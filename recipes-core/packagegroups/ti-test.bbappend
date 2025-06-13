# Remove some package that are no longer working with latest (6.15)
# mainline kernel.

TI_TEST_BASE:remove = " \
    hwspinlocktest \
    perf \
"
