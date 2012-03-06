class repo {
    $releasever = "6"
    $basearch = "x86_64"

    yumrepo {
        
     "epel":
            descr => "Epel-6",
            baseurl => "http://mirror.eurid.eu/epel/5/$basearch/",
            enabled => 1,
            gpgcheck => 0;
"puppetlabs":
            descr => "Puppetlabs",
            baseurl => "http://yum.puppetlabs.com/",
            enabled => 1,
            gpgcheck => 0;


        }




}

# This is the nodes.pp for the percona-vagrant class
#


node vagrant-percona{

	class { 'percona':
      		server          => 'true',
      		percona_version => '5.1';
  	}



}

