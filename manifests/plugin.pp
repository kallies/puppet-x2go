# Copyright 2011, niklaus.giger@member.fsf.org
#
# This program is free software; you can redistribute it and/or modify it 
# under the terms of the GNU General Public License version 3 as published by
# the Free Software Foundation.class 
class x2go::plugin   inherits x2go::common {
  package { "x2goplugin":
    ensure => installed,
  }	
}