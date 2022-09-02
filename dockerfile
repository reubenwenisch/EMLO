# our base image
FROM python:3.10.5-alpine

# set working directory inside the image
WORKDIR /app

# copy our requirements
COPY requirements.txt requirements.txt

ADD torch-1.12.1+cpu-cp39-cp39-linux_x86_64.whl /torch/torch-1.12.1+cpu-cp39-cp39-linux_x86_64

# install dependencies
RUN pip3 install -r requirements.txt

# copy this folder contents to image
COPY . .

# tell the port number the container should expose
EXPOSE 5000

# run the application
ENTRYPOINT ["/script.sh"]
CMD ["dpn92", "test.png"]