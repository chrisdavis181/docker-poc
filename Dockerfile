FROM databricksdocs/pytest:v0.1.4

WORKDIR /dir

COPY ./requirements.txt ./
COPY ./test_sample.py ./

CMD [ "pytest" ]