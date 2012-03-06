class percona::config::server {
  if $percona::server {
    File {
      owner   => $percona::params::user,
      group   => $percona::params::group,

      # dim0
      # notify  => Service[$percona::params::service],
      require => Class['percona::install'],
    }

    if $percona::params::confdir {
      file { $percona::params::confdir:
        ensure => directory;
      }
    }

    file {
      $percona::params::config:
        ensure  => present,
        content => template ("percona/my.cnf.$hostname.erb");
    }
  }
}
