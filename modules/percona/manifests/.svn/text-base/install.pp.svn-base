# Class: percona::install
#
#
class percona::install {
  Package {
    require => [
      Class['percona::params'],
      Class['percona::preinstall'],
    ],
  }

  package {
    $percona::params::pkg_common:
      ensure => installed;
  }
# Installation of the Percona client
  if $percona::client {
    package {
      $percona::params::pkg_client:
        ensure  => installed,
        require => Package[$percona::params::pkg_common];
    }
  }
# Installation of the Percona server
  if $percona::server {
    package {
      $percona::params::pkg_server:
        ensure  => installed,
        require => Package[$percona::params::pkg_client];
    }
  }

# Installation of the wonderfull Percona tools package
#  if $percona::server {

#    package {
#      $percona::params::pkg_tools:
#        ensure => installed,
#        require => Package[$percona::params::pkg_tools];
#    }
#  }
}
