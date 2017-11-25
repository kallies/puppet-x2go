# Copyright 2011, niklaus.giger@member.fsf.org
#
# This program is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License version 3 as published by
# the Free Software Foundation.
#
# @param ensure Whether to install the x2go client or not
#
# @example
#   include ::apt
#   class { '::x2go::client': }
#
class x2go::client (
  Enum['present', 'installed', 'absent', 'purged', 'held', 'latest'] $ensure = 'present',
) {
  package { 'x2goclient':
    ensure  => $ensure,
    require => Class['apt::update'],
  }
}
