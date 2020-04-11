FROM docker:stable-git

RUN apk add --update make jq python python-dev py-pip build-base \
    && pip install awscli --upgrade \
    && apk --purge -v del py-pip \
    && rm -rf /var/cache/apk/*