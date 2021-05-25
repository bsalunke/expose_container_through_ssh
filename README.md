# expose_container_through_ssh
The repo is to provide dockerfile/file configuration to expose the container through ssh 

Command to launch the contianer is:
docker run -itd -v `pwd`:/var/www/html/ -v /root/RD_container_ssh/docker/sshd_config:/etc/ssh/sshd_config  -p 14000:22  <image id> 

## you can access container launched using above command from remote host. Use the password as the passpharase used in Dockerfile. 
ssh webssh@hostip -p 14000 
