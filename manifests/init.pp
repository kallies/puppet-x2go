# Class: x2go
# ===========================
#
# Parameters
# ----------
#
# * `version`
# Specify which repository version to use.
# e.g. baikal or main
#
# * `install_client`
# Boolean value to decide if the client should be installed.
#
# Examples
# --------
#
# @example
#    class { 'x2go::client': }
#
# Authors
# -------
#
# Niklaus Giger <niklaus.giger@member.fsf.org>
# Lukas Kallies
#
# Copyright
# ---------
#
# Copyright 2016 Lukas Kallies
# Copyright 2011 Niklaus Giger
#
# This program is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License version 3 as published by
# the Free Software Foundation.
#
class x2go(
  $version         = 'main',
  $install_client  = true,
) {
  include x2go::common
  if ($install_client) {
    include x2go::client
  }
}

# vim: ts=2 et sw=2 autoindent
