# vagrants

My virtual development machines

## Source
https://www.vagrantup.com/docs/getting-started/


## What to install to start a new virtual development machine
* virtualbox: https://www.virtualbox.org/
* vagrant: https://www.vagrantup.com/

## Create a new machine
* Create new project directory, to keep all related projects files together
* Create vagrant file: vagrant init [host type]
    * e.g.: ```vagrant init bento/ubuntu-16.04```
* A new file "Vagrantfile" will be created
* Edit the file and add default applications which should be installed before using the virtualmachine:
```
    config.vm.provision "shell", inline: <<-SHELL
      apt-get update
      sudo apt-get install ...
      sudo apt-get install ...
    SHELL
```

## Run the virtual machine
* Open a shell and enter: ```vagrant up```
* Open ssh session to the vdm: ```vagrant ssh```
* login as ```vagrant : vagrant```
