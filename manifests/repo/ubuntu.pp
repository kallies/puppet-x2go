# Class x2go::repo::ubuntu
class x2go::repo::ubuntu {

  apt::source { 'x2go':
    location    => 'http://ppa.launchpad.net/x2go/stable/ubuntu',
    repos       => 'trusty main',
    key         => '7D8D681B1C07FE41499323D7CDE3A860A53F9FD',
    key_server  => 'subkeys.pgp.net',
    include_src => false,
  }

}
