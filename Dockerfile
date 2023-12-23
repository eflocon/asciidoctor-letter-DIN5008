# build dependencies separately to save time for rebuilding
FROM ruby:2.7 AS dependencies

RUN gem install asciidoctor-pdf --pre

FROM dependencies
# lets create the letter directory
RUN mkdir /opt/asciidoctor-letter
# here the local directory is mounted into
RUN mkdir /content

WORKDIR /opt/asciidoctor-letter
# lets copy the implementation of the
COPY data .

CMD ["echo", "see generate-letter.sh howto use tool"]