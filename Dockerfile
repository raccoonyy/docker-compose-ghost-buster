FROM python:2
USER root

RUN pip install git+https://github.com/raccoonyy/buster.git#egg=buster
RUN mkdir -p /deploy/static/rss

WORKDIR /deploy
COPY scripts/      /deploy/
RUN  chmod a+x     /deploy/*.sh

ENTRYPOINT ["./entrypoint.sh"]

CMD ["./preview.sh"]