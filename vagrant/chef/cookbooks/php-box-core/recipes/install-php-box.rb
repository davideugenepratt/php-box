#
# Cookbook:: php-box
# Recipe:: install-php-box
#
# Copyright:: 2017, DavidEugenePratt, All Rights Reserved.

# execute 'add-php-box-to-path' do
#     command "sudo touch /etc/profile.d/php-box.sh && echo 'export PATH=$PATH:/vagrant/php-box' >> /etc/profile.d/php-box.sh"
# end

if node[:platform] == 'redhat' || node[:platform] == 'centos'

  package 'Install EPEL' do

    package_name 'epel-release'

  end

  include_recipe 'yum-mysql-community::mysql57'

end

if node[:platform] == 'ubuntu' || node[:platform] == 'debian'

  package 'Install libxml2-dev' do

    package_name 'libxml2-dev'

  end

end

# Leaving in the below lines for being able to build from source

# node.override["php"]["version"] = "7.0.22"
# node.override["php"]["checksum"] = "04292eaea0eeb75e9b6a36a3db8e90a3d43f939646fd9d7d1e083e5b70884383"

node.default["php"]["directives"] = {
    'phar.readonly' => 'Off'
}

include_recipe 'php::default'

php_requirements = [ 'gd' , 'mbstring' , 'mcrypt' , 'curl' , 'intl' , 'bcmath' , 'xsl' , 'xml' , 'soap' , 'mysql' , 'zip' ]

php_requirements.each_with_index do |req,i|

    if node[:platform] == 'redhat' || node[:platform] == 'centos'

      package 'Install php-' + req do

        package_name 'php-' + req

      end

    end

    if node[:platform] == 'ubuntu' || node[:platform] == 'debian'

      package 'Install php7.0-' + req do

        package_name 'php7.0-' + req

      end

    end

end

package 'Install Zip' do
    package_name 'zip'
end