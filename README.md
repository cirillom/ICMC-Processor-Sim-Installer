# ICMC Processor Simulator Linux Installer

This installation process was tested with Ubuntu 11.10, Ubuntu 22.04 and Fedora 36. Any distro that doesn't work should be posted as an issue.

This repository should be used as a submodule for your github project.

```
git submodule add https://github.com/cirillom/ICMC-Processor-Sim-Installer
```

In order to install the processor simulator you simply do:

``` 
sudo make 
```

If you also want to install the vscode extension do:

```
make vscode
```
