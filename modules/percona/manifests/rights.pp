/*

== Definition: mysql::rights

A basic helper used to create a user and grant him some privileges on a database.

Example usage:
  mysql::rights { "example case":
    user => "foo",
    password => "bar",
    database => "mydata",
    priv => ["select_priv", "update_priv"]
  }

Available parameters:
- *$ensure": defaults to present
- *$database*: the target database
- *$user*: the target user
- *$password*: user's password
- *$host*: target host, default to "localhost"
- *$priv*: target privileges, defaults to "all" (values are the fieldnames from mysql.db table).

*/
define percona::rights ($database, $user, $password, $host, $ensure="present", $priv) {


 if $mysql_exists == "true" {
    if ! defined(mysql_user ["${user}@${host}"]) {
      mysql_user { "${user}@${host}":
        password_hash => mysql_password($password),
        require => File["/etc/my.cnf"],
      }
    }
    mysql_grant { "${user}@${host}/${database}":
      privileges => $priv,
      require => File["/etc/my.cnf"],
    }
  }

}
