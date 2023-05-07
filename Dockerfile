FROM alpine

RUN apk add --no-cache bash

COPY pluto.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/pluto.sh

RUN mkdir /logi

WORKDIR /logi

ENTRYPOINT ["/usr/local/bin/pluto.sh"]