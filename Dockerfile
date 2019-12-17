ARG version="18.04"
FROM ubuntu:$version
RUN echo "version...."$version
ARG licensekey="24.4534.35"
# First Dockerfile.....
LABEL MAINTAINER j.ravikumar231@gmail.com
RUN mkdir /code
COPY Sample.sh /code/Sample.sh
COPY testfile /code/testfile
RUN chmod +x /code/Sample.sh
RUN echo "Image is built at `date`"
RUN echo "license key"$licensekey
#ENTRYPOINT ["sh","/code/Sample.sh"]
#CMD ["/code/testfile"]

CMD echo "Container being built"
CMD env
