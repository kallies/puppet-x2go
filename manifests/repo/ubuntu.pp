# Class x2go::repo::ubuntu
class x2go::repo::ubuntu {

  include apt
  apt::source { 'x2go':
    location    => 'http://ppa.launchpad.net/x2go/stable/ubuntu',
    repos       => 'main',
    include_src => false,
    key         => {
      'id'     => 'a7d8d681b1c07fe41499323d7cde3a860a53f9fd',
      'server' => 'pgp.mit.edu',
    },
  }

}
