#Choosen Container Isolation Aspects for CA1

1.Process Identifier:
 Process Identifier is a feature in docker which which provide separation of processes. Each aspect of container run as a separate namespace,each namespace has a unique process identifier.To see the processID to container we run docker exec
    `docker exec container-name ps -ef`
  

2.Cgroup:
  Cgroup is a feature in the linux kernel to control physical resources it provides resource limitation and reporting capabilities within na container space. With Cgroup containers can be assigned host's physical resources like CPU,RAM,Network.
  Basically cgroup is used as resource control for hosts to containers.

  To assign the cgroup feature to a container, it is done when running docker run command,in the CA's case 
  we can run it as follows

    `docker run -d --name='myca' --cpuset-cpus=0 --cpu-shares=20 ca1` .

  in this case we perform a docker run command to lock down the container to the first CPU core.

  #Non Virtulization 

  The code in the report.sh file displays the used and total memery for the system.The code `free -m -t` will
  collect total system memory and print to console.

  This indicates and proves that containers uses the same hardware resouce in this case the RAM.
  The bash script will give different outputs if run on different machine environments.

#Dockerfile

1.Creates image from base Ubuntu image with the latest version.
2.Run the ubuntu sytem update.
3.Copy the report.sh file to container
4.Run the change mode command to allow the file to be an executable file
5.Set the report.sh file as the entry point for the container.