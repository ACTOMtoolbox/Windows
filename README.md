# Linux
Run on a linux machine with a graphical user interface for settings - Docker is required to run the toolbox (https://docs.docker.com/engine/install/).

The Decision Support Tool is open source and can be freely downloaded from https://github.com/ACTOMtoolbox, which also includes documentation and instructions. If used independently the developers accept no liability relating to the use of the DST. 

The toolbox developers, an academic / R&D consortium based in the UK, Norway, Netherlands and US would be delighted to discuss providing a service using the DST, please contact one or more of: 

UK: Jerry Blackford jcb@pml.ac.uk  

Norway: Guttorm Alendal Guttorm.Alendal@uib.no  

NL: Stefan Carpentier stefan.carpentier@tno.nl  

USA: Katherine Romanak, katherine.romanak@beg.utexas.edu and/or Rajesh Pawar, rajesh@lanl.gov 

We strongly encourage everyone downloading and using the DST code to register as a user by filling a short registration form. We’d love to get a better understanding of who is using the DST and for what applications, as it will help us to provide the best support to the user community and allows us to demonstrate (anonymised) use metrics to our funders. It will also allow you to receive information and news on any updates. 

**Troubleshooting:**

If you get the error message: **couldn't connect to display** As the default settings of X11 (the system for using the display) only allows local users to print to screen, we need to change this to all users (including docker).

```
sudo apt-get install x11-xserver-utils
xhost +
```

This is also the main reason why this specific code doesn't work on Windows and Mac as they have different display settings, a workaround is in development.
