# x2go
#
# x2go Puppet Module
#
# Copyright 2011 Niklaus Giger
#
# This program is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License version 3 as published by
# the Free Software Foundation.
#
# @param version Specify which repository version to use. e.g. baikal or main
#
# @param install_client Value to decide if the client should be installed.
#
# @param install_server Value to decide if the server should be installed.
#
# @param epel_repo If this is running on an RedHat/Fedora based OS decide wheter to use
#   fedoraproject EPEL (fedora) or to use the x2go EPEL repository (x2go).
#
# @example
#   class { '::x2go':
#     install_client => false,
#     install_server => true,
#   }
#
# @author Niklaus Giger <niklaus.giger@member.fsf.org>
# @author Lukas Kallies <lukas@kalli.es>
#
class x2go(
  String $version                   = 'main',
  Boolean $install_client           = true,
  Boolean $install_server           = false,
  Enum['fedora', 'x2go'] $epel_repo = 'x2go',
) {
  class { '::x2go::install': }

  contain '::x2go::install'
}

# vim: ts=2 et sw=2 autoindent
