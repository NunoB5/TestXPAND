#Procedure to test   
mkdir /home/nuno/challenge101   
vim Dockerfile   
mkdir /home/nuno/challenger101/ssl   

#Building commands   
docker build -t challenge101 .   
docker ps -a   
docker run -dp 4041:8080 -it --rm --name testimage challenge101
 
#Managemnt command   
docker stop <container id>   
docker image list

#Export commands   
docker save -o /home/nuno/challenge101/testimage.tar challenge101   
docker load -i /home/nuno/challenge101/testimage.tar
