# x2go::install
class x2go::install {
  if ($::x2go::install_client or $::x2go::install_server) {
    class { '::x2go::repo': }
  }
  if $::x2go::install_client {
    class { '::x2go::client':
      require => Class['::x2go::repo'],
    }
  }
  if $::x2go::install_server {
    class { '::x2go::server':
      require => Class['::x2go::repo'],
    }
    ~> class { '::x2go::service': }
  }
}
