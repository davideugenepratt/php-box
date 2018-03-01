name 'php-box-core'
maintainer 'davideugenepratt'
maintainer_email 'david@davideugenepratt.com'
license 'All Rights Reserved'
description 'Installs/Configures php-box'
long_description 'Installs/Configures php-box'
version '0.1.4'
chef_version '>= 12.1' if respond_to?(:chef_version)

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
issues_url 'https://github.com/davideugenepratt/php-box/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
source_url 'https://github.com/davideugenepratt/php-box'

depends 'docker'
depends 'ama-docker-compose'
depends 'php'
depends 'composer'
depends 'yum-mysql-community'
depends 'mysql'

