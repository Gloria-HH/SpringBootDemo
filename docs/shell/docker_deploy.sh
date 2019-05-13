echo 'current image:'
docker images
#mvn package docker:build
#docker run -d -p 8090:8090 -t springboot/spring-boot-demo
DOCKER_IMAGE_NAME=springboot/spring-boot-demo
# check
pid=`docker ps |grep springboot/spring-boot-demo|awk '{print $1}'`
imageId=`docker images |grep ${DOCKER_IMAGE_NAME} |awk '{print $3}'`
if [ -n "pid" ]
then
   echo "remove pid $pid"
   docker rm -f $pid
fi
if [ -n "imageId" ]
then
   echo "remove imageId $imageId"
   docker rmi -f $imageId
fi

docker build -t ${DOCKER_IMAGE_NAME} .
docker run -d -p 8090:8090 -t ${DOCKER_IMAGE_NAME}
