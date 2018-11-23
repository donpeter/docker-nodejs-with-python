FROM ubuntu:16.04
ARG NODE_VERSION=1
ENV NODE_ENV=production \
    PORT=3000
LABEL maintainer="Don Peter C. Atunalu <patunalu@yahoo.com" \
      description="Node.js, Python, C++ and  Make Image based on ubuntu:16.04"
RUN apt-get update && apt-get install -y \
    python \
    g++ \
    make \
    curl
RUN curl -sL https://deb.nodesource.com/setup_11.x | bash - && \
    apt-get install -y nodejs
 
CMD ["node"]
