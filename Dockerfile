FROM alpine:3.20
RUN apk add --no-cache tshark=4.2.5-r0

LABEL maintainer="yusuferdemnacar@gmail.com" \
      description="Minimal Docker image for tshark 4.2.5 based on Alpine Linux 3.20. \
      Source: https://gitlab.com/wireshark/wireshark/-/tree/v4.2.5 \
      Tshark Alpine package: https://pkgs.alpinelinux.org/package/v3.20/community/x86_64/tshark \
      License: GPL-2.0-or-later" \
      license="GPL-2.0-or-later"

ADD https://www.gnu.org/licenses/gpl-2.0.txt /GPL-2.0.txt

ENTRYPOINT ["tshark"]