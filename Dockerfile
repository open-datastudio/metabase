FROM metabase/metabase:v0.36.3

ARG MGID=2000
ARG MUID=2000

RUN addgroup -g $MGID -S metabase && \
    adduser -D -u $MUID -G metabase metabase && \
    chown metabase:metabase -R /app /plugins

RUN sed -i 's:exec su metabase -s:exec:g' /app/run_metabase.sh

ENTRYPOINT ["/app/run_metabase.sh"]
