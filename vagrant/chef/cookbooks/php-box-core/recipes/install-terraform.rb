#
# Cookbook:: php-box
# Recipe:: install-terraform
#
# Copyright:: 2017, DavidEugenePratt, All Rights Reserved.

package 'Install Unip' do
    package_name 'unzip'
end

execute "Download and Unzip Terraform" do
    command "wget https://releases.hashicorp.com/terraform/0.11.3/terraform_0.11.3_linux_amd64.zip"
    command "unzip terraform_0.11.3_linux_amd64.zip -d terraform"
    command "sudo mv terraform /usr/local/"
    command "echo 'export PATH=\"$PATH:/usr/local/terraform\"' | sudo tee -a /etc/environment"
end