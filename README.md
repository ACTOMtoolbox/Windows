# Windows

Run on a Windows machine with a graphical user interface for settings - Docker is required to run the toolbox (https://docs.docker.com/engine/install/).

As the toolbox setup needs access to your computer's display, the code must be run on a system with an X11 server. We suggest installing mobaxterm (https://mobaxterm.mobatek.net/) as this is an xserver built into a terminal. This may need to be run with administrator privileges depending on your docker instalation.

As windows does not have a native Shell component each command and tool must be run individually.

With docker engine running and in mobaxterm test the docker "hello world"

```
docker run hello-world
```

We then need to know the IP address of the computer. This is so we can direct the setup program to run on your computer's display.

```
ipconfig
```

An example is IPv4 Address. . . . . . . . . . . : 192.168.99.1

so we want to set this as the location of the display, adding :0.0 to the end

```
export DISPLAY=192.168.99.1:0.0
```

You may have several IPv$ addresses listed depending on the number of network cards your machine has. Simply try one, if you later get a message saying "couldn't connect to display" then try a different one as above. 

Before running the code, make a specify a folder where you want to run the code, for example create a folder called "run" on the "D" drive (make sure you enter the full path):

```
export rundir=D:run
```

Now move to this folder:

```
cd $rundir
```

Now we are ready to setup the toolbox:

```
docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY --mount type=bind,source="/$rundir",target=/srv/actom-run/input actomtoolbox/actom-run
```

This should run, request inputs, and provide you with your settings files...

# this is a work in progress and needs completing ...... #

The Decision Support Tool is open source and can be freely downloaded from https://github.com/ACTOMtoolbox, which also includes documentation and instructions. If used independently the developers accept no liability relating to the use of the DST. 

The toolbox developers, an academic / R&D consortium based in the UK, Norway, Netherlands and US would be delighted to discuss providing a service using the DST, please contact one or more of: 

UK: Jerry Blackford jcb@pml.ac.uk  

Norway: Guttorm Alendal Guttorm.Alendal@uib.no  

NL: Stefan Carpentier stefan.carpentier@tno.nl  

USA: Katherine Romanak, katherine.romanak@beg.utexas.edu and/or Rajesh Pawar, rajesh@lanl.gov 

We strongly encourage everyone downloading and using the DST code to register as a user by filling a short registration form. We’d love to get a better understanding of who is using the DST and for what applications, as it will help us to provide the best support to the user community and allows us to demonstrate (anonymised) use metrics to our funders. It will also allow you to receive information and news on any updates.
