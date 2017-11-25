# x2go::repo::el
#
# @param epel_repo If this is running on an RedHat/Fedora based OS decide wheter to use
#   fedoraproject EPEL (fedora) or to use the x2go EPEL repository (x2go).
#
class x2go::repo::el (
  Enum['fedora', 'x2go'] $epel_repo = $::x2go::epel_repo,
) {
  # TODO
  File {
    owner => 'root',
    group => 'root',
    mode  => 0644,
  }
  file { '/etc/yum.repos.d/x2go.repo':
    content => template("${module_name}/x2go.repo"),
  }
  file { '/etc/yum/x2go-ci.org.key':
    content => template("${module_name}/x2go-ci.org.key"),
  }
  exec { 'rpm --import /etc/yum/x2go-ci.org.key':
    path    => '/bin:/usr/bin',
    require => File['/etc/yum/x2go-ci.org.key'],
    unless  => 'rpm -q gpg-pubkey-d50582e6-4a3feef6',
  }
}

