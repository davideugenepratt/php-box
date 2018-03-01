#
# Cookbook:: php-box
# Recipe:: install-packer
#
# Copyright:: 2017, DavidEugenePratt, All Rights Reserved.

package 'Install Unip' do
    package_name 'unzip'
end

execute "Download and Unzip Packer" do
    command "wget https://releases.hashicorp.com/packer/1.2.1/packer_1.2.1_linux_amd64.zip"
    command "unzip packer_1.2.1_linux_amd64.zip -d packer"
    command "sudo mv packer /usr/local/"
    command "echo 'export PATH=\"$PATH:/usr/local/packer\"' | sudo tee -a /etc/environment"
end