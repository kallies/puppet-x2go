# x2go::plugin
#
# Copyright 2011, niklaus.giger@member.fsf.org
#
# This program is free software; you can redistribute it and/or modify it 
# under the terms of the GNU General Public License version 3 as published by
# the Free Software Foundation.class 
#
# @param ensure State of the x2goplugin package
#
class x2go::plugin (
  String $ensure = 'present',
) {
  include x2go::repo
  package { 'x2goplugin':
    ensure => $ensure,
  }
}
