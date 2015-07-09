FROM google/golang

WORKDIR /gopath/src/thoas/picfit
ADD . /gopath/src/thoas/picfit
RUN go get thoas/picfit
RUN mkdir -p /gopath/src/thoas/picfit/images

EXPOSE 3001
CMD ["/gopath/bin/picfit", "-c", "config.json"]