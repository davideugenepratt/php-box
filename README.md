# PHP-Box Core

## Requirements

* Oracle VirtualBox
    - Virtualbox is an application that allows you to run virtual machines on your computer.

* Vagrant
    - Vagrant is used to manage the VirtualBox virtual machines

* ChefDK
    - ChefDK is required for the Vagrant Berkshelf plugin.

* vagrant-vbguest plugin
    - Vagrant vbguest plugin is not necessarily required but is pretty useful in most cases to ensure that shared folders work correctly.

* vagrant-berkshelf plugin
    - Vagrant berkshelf plugin is used to download the required Chef cookbooks that provision the virtual machine.