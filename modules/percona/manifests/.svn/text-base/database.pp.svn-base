define percona::database($ensure) {

  if $mysql_exists == "true" {
    mysql_database { $name:
      ensure => $ensure,
      require => File["/etc/my.cnf"],
    }
  }
}
