#
# Cookbook:: php-box
# Recipe:: install-dev
#
# Copyright:: 2017, DavidEugenePratt, All Rights Reserved.

include_recipe '::install-docker'
include_recipe '::install-docker-compose'
include_recipe '::install-php-box'
include_recipe 'composer::default'
include_recipe '::install-packer'
include_recipe '::install-terraform'
include_recipe '::install-node'
include_recipe '::install-grunt'

