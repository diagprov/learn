

.global pvr
.type pvr, @function

.text
pvr:
    std 31,-8(1)
    stdu 1,-64(1)

    mfspr 3, 0x11F

    ld 31, -8(1)
    blr
