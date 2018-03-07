#
# Cookbook:: php-box
# Recipe:: install-node
#
# Copyright:: 2017, DavidEugenePratt, All Rights Reserved.

include_recipe 'nvm'

nvm_install ''  do
  from_source false
  alias_as_default true
  action :create
end

