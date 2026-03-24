FROM docker.io/gentoo/stage3:latest

RUN emerge-webrsync && \
    emerge --verbose --quiet-build \
    llvm-core/llvm \
    llvm-core/lld && \
    rm -rf /var/cache/distfiles/*

RUN emerge-webrsync && \
    emerge --verbose --quiet-build \
    dev-lang/rust && \
    rm -rf /var/cache/distfiles/*
