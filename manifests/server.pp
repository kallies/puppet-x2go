# x2go::server
#
# Copyright 2011, niklaus.giger@member.fsf.org
#
# This program is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License version 3 as published by
# the Free Software Foundation.
#
# @param ensure Whether to install the x2go server or not
#
# @example
#   include ::apt
#   class { '::x2go::server': }
#
class x2go::server (
  Enum['present', 'installed', 'absent', 'purged', 'held', 'latest'] $ensure = 'present',
) {
  package { ['x2goserver', 'x2goserver-extensions', 'x2goserver-xsession']:
    ensure  => $ensure,
  }
}
