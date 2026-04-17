FROM docker.io/gentoo/stage3:latest

RUN echo 'USE="X opengl wayland icu harfbuzz"' >> /etc/portage/make.conf

RUN emerge-webrsync && \
    emerge --quiet --noreplace \
    llvm-core/llvm \
    llvm-core/lld \
    llvm-core/clang && \
    rm -rf /var/cache/distfiles/*

RUN emerge-webrsync && \
    emerge --quiet --noreplace \
    dev-lang/rust && \
    rm -rf /var/cache/distfiles/*

RUN emerge --quiet --noreplace \
    dev-util/pkgcheck \
    net-libs/webkit-gtk \
    gui-libs/gtk-layer-shell \
    dev-vcs/git

RUN emerge --quiet --noreplace \
    net-libs/webkit-gtk:4.1
