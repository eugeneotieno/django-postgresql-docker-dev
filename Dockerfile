#base image
FROM python:3

#maintainer
LABEL Author="CodeGenes"

# The enviroment variable ensures that the python output is set straight
# to the terminal with out buffering it first
ENV PYTHONBUFFERED 1

#directory to store app source code
RUN mkdir /zuri

#switch to /app directory so that everything runs from here
WORKDIR /zuri

#copy the app code to image working directory
COPY ./zuri /zuri

#let pip install required packages
RUN pip install -r requirements.txt
