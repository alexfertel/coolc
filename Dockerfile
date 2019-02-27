FROM python:latest
LABEL maintainer="alexfertel97@gmail.com"

COPY . /coolc

WORKDIR /coolc

VOLUME [ "/coolc/cil", "/coolc/cool", "/coolc/mips", "/coolc/tests" ]

ENTRYPOINT [ "python3", "main.py" ]
CMD [ "cool/hello_world.cl" ]