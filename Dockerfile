FROM alpine:3.5
RUN apk add --update python py-pip
#copy over thje reqiuirements this app needs
COPY requirements.txt /src/requiremenets.txt
#install the requirements this app needs into the container
RUN pip install -r /src/requiremenets.txt
#copy the app program into the src dir of the container
COPY app.py /src
#copy the directory buzz into the src directory 
COPY buzz /src/buzz
#run the app, in the location given inside the container
CMD python /src/app.py
