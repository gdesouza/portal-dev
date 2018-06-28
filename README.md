# How to Build and Run


### Build container
```sudo docker build -t gdssouza/portal-dev .```


### Run container with ssh id_rsa copy
```sudo docker run -it -v ~/.ssh/id_rsa:/root/.ssh/id_rsa  gdssouza/portal-dev```

Due to trying to be as portable as possible you cannot map a host directory to a docker container directory within a dockerfile, because the host directory can change depending on which machine you are running on. To map a host directory to a docker container directory you need to use the -v flag when using docker run like so:

The compilation scripts requires to be executed by a non root user. So we pass the user id of the current user to the container using --user.
```docker run -it -v /etc/passwd:/etc/passwd -v /etc/shadow:/etc/shadow -v /etc/sudoers:/etc/sudoers -v /etc/group:/etc/group  --user $(id -u) -v /home/gustavo/.ssh:/home/gustavo/.ssh gdssouza/portal-dev```

