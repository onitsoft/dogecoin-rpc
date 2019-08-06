FROM onitsoft/coin-base:latest
LABEL maintainer="info@onit.ws"
LABEL build_date="2019-08-06"
LABEL description="v1.14.0"
ADD app/ $COIN_BASE/app/
RUN chmod -R +x $COIN_BASE/app/*
RUN chown -R coin:coin $COIN_BASE
USER coin
CMD ["/bin/bash"]

