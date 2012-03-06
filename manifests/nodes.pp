# This is the nodes.pp for the percona-vagrant class
#


node vagrant-percona{

	class { 'percona':
      		server          => 'true',
      		percona_version => '5.1';
  	}



}


