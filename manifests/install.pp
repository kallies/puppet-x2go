# Class x2go::install
class x2go::install (
  $install_client = ::x2go::install_client,
  $install_server = ::x2go::install_server,
) {
  class { '::x2go::repo': } ->
  if ($install_client) {
    class { '::x2go::client': }
  }
  if ($install_server) {
    class { '::x2go::server': }
  }
}
