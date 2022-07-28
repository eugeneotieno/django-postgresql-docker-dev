#base image
FROM python:3

# The enviroment variable ensures that the python output is set straight
# to the terminal with out buffering it first
ENV PYTHONBUFFERED 1

#directory to store app source code
RUN mkdir /app

#switch to /app directory so that everything runs from here
WORKDIR /app

#copy the app code to image working directory
COPY app /app

#let pip install required packages
RUN pip install -r ./requirements.txt
