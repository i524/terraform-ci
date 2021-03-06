ARG BASE_TAG

FROM hashicorp/terraform:${BASE_TAG}

# install tzdata
RUN apk update && apk --no-cache add tzdata

# install tfnotify
ADD https://github.com/mercari/tfnotify/releases/download/v0.7.0/tfnotify_linux_amd64.tar.gz ./
RUN tar -xzvf tfnotify_linux_amd64.tar.gz -C /bin
RUN rm -rf tfnotify_linux_amd64
