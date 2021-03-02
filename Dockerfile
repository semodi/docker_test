FROM rikorose/gcc-cmake

WORKDIR /lib

RUN wget https://github.com/google/googletest/archive/release-1.10.0.zip 
RUN unzip release*.zip 
RUN mv googletest*/ googletest/
RUN rm release*.zip

RUN cd /lib/googletest \
&& cmake . \
&& make

COPY *.cpp /lib/
COPY *.h  /lib/
COPY Makefile /lib/

# Set the CMD to your handler
CMD [ "make" ]
