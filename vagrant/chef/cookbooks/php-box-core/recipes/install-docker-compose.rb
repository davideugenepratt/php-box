#
# Cookbook:: php-box
# Recipe:: install-docker-compose
#
# Copyright:: 2017, DavidEugenePratt, All Rights Reserved.

docker_compose_installation 'default' do
  version '1.10.1'
  path '/usr/local/bin/docker-compose'
  action [:create]
end