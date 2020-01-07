FROM hashicorp/terraform:light

# install tzdata
RUN apk update && apk --no-cache add tzdata

# install tfnotify
ADD https://github.com/mercari/tfnotify/releases/download/v0.5.0/tfnotify_0.5.0_linux_amd64.tar.gz ./
RUN tar -xzvf tfnotify_0.5.0_linux_amd64.tar.gz -C /bin
RUN rm -rf tfnotify_0.5.0_linux_amd64
