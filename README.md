# docker-rcc-1.3
Dockerfile and helper scripts for Gaisler RCC 1.3 RTEMS toolchain and SPARC RTEMS BSPs

This is a Dockerfile and helper shell scripts to create a docker image for the Gaisler RCC 1.3 (rc8) toolchain.
RCC is the cross compiler and RTEMS SDK for the SPARC/LEON CPUs.

The image installs a lot of development packages that are not necessary to run the compiler, but I wanted to be able to use this image to build applications for both native linux and cross compiled RTEMS/SPARC.

There may be other packages I may be missing like Cmake, autoconf etc.

# Building the Docker image

Run the build-rcc-1.3-image.sh shell script.

# Running the Docker image

Run the run-rcc-1.3-image.sh shell script.
