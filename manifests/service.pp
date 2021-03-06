# Class x2go::service
#
# @param service_state the state of the x2goserver service to ensure
#
class x2go::service (
  $service_state = 'running',
) {
  service { 'x2goserver':
    ensure     => $service_state,
    enable     => true,
    hasstatus  => false,
    hasrestart => true,
    status     => '/usr/bin/pgrep -f x2gocleansessions',
    require    => Package['x2goserver'],
  }
}
