FROM alpine:3.9.4
RUN apk add curl \
&&  apk add ffmpeg \
&&  curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl \
&&  chmod a+rx /usr/local/bin/youtube-dl
COPY temazomod.sh /usr/local/bin
#ENTRYPOINT ["/usr/local/bin/temazomod.sh"]
#CMD ["thunderstruck","seagulls"]
