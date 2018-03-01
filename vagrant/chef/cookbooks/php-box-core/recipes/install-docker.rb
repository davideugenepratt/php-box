#
# Cookbook:: php-box
# Recipe:: install-docker
#
# Copyright:: 2017, DavidEugenePratt, All Rights Reserved.

docker_service 'default' do
  action [:create, :start]
end