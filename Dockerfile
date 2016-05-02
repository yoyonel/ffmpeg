# ffmpeg
#
# VERSION               2.7.1-2
#
# From https://trac.ffmpeg.org/wiki/CompilationGuide/Centos
#
FROM          centos:centos6
MAINTAINER    Julien Rottenberg <julien@rottenberg.info>



ENV         FFMPEG_VERSION=2.7.7 \
            FAAC_VERSION=1.28    \
            FDKAAC_VERSION=0.1.4 \
            LAME_VERSION=3.99.5  \
            OGG_VERSION=1.3.2    \
            OPUS_VERSION=1.1.1   \
            THEORA_VERSION=1.1.1 \
            YASM_VERSION=1.3.0   \
            VORBIS_VERSION=1.3.5 \
            VPX_VERSION=1.3.0    \
            XVID_VERSION=1.3.4   \
            X265_VERSION=1.9     \
            SRC=/usr/local       \
            PKG_CONFIG_PATH=/usr/local/lib/pkgconfig



COPY          run.sh /tmp/run.sh

# See https://github.com/jrottenberg/ffmpeg/blob/master/run.sh
RUN           bash /tmp/run.sh && ffmpeg -buildconf

WORKDIR       /tmp/workdir

CMD           ["--help"]
ENTRYPOINT    ["ffmpeg"]
