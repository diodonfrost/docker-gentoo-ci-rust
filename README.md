# Docker Gentoo CI Rust

A Docker image based on [Gentoo Linux](https://www.gentoo.org/) providing a ready-to-use CI environment with Rust, LLVM, and LLD pre-built and installed.

## Overview

This image extends the official [`gentoo/stage3`](https://hub.docker.com/r/gentoo/stage3) base image by building and installing LLVM, LLD, and the Rust toolchain via Gentoo's native package manager ([Portage](https://wiki.gentoo.org/wiki/Portage)). It is designed to be used in CI pipelines to build and test Rust projects on Gentoo without needing to install the toolchain on every run.

## Usage

### Just commands

This project uses [just](https://github.com/casey/just) as a command runner.

| Command              | Description                            |
|----------------------|----------------------------------------|
| `just build`         | Build the Docker image                 |
| `just push`          | Build, tag, and push to GHCR           |
| `just shell`         | Run an interactive shell in the image  |
| `just rust-version`  | Show the installed Rust version        |
| `just clean`         | Remove the local image                 |
