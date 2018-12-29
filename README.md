# docker-dump1090-rtlsdr
docker for dump1090 and rtlsdr
#build the docker
docker build -t dump1090:v1 .
#run the docker
docker run -t -p 8100:8100 --privileged -v /dev/bus/usb:/dev/bus/usb dump1090:v1 --interactive --net
