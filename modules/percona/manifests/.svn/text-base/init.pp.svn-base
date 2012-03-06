# Class: percona
#
# This class installs percona
#
# Parameters:
#
# Actions:
#   - Install PerconaDB
#   - Install PerconaXtraDB
#
# Requires:
#
# Sample Usage:
#
#  node server {
#    class { 'percona':
#      server          => 'true',
#      percona_version => '5.5';
#    }
#
#  node client {
#    class { 'percona': }
#  }
#
# Valid options:
#
# Known issues:
#
class percona (
  $client          = 'true',
  $server          = undef,
  $percona_version = '5.1' # Options: 5.1, 5.5
) {
#  motd::register {'percona': }

  class { 'percona::params': }
  class { 'percona::preinstall': }
  class { 'percona::install': }
  class { 'percona::config': }
  class { 'percona::service': }

  Class['percona::params'] ->
  Class['percona::preinstall'] ->
  Class['percona::install'] ->
  Class['percona::config'] 
   

# percona::rights{"Set rights for rwfrie":
#    ensure => present,
#    user => "rwfrie",
#    password => "3e4db758df",
#    database => ["um","um_20090928"],
#    priv => ["select_priv", "update_priv", "insert_priv","delete_priv"]
#  }

  
#  Class['percona::service'] 

 
}

