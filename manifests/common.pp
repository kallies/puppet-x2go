# kate: replace-tabs on; indent-width 2; indent-mode cstyle; syntax ruby
# Copyright 2011, niklaus.giger@member.fsf.org
#
# This program is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License version 3 as published by
# the Free Software Foundation.class

# Supported distributions/version Debian/squeeze Debian/wheezy Ubuntu/precise aka 12.04 LTS
# see http://wiki.x2go.org/doku.php/wiki:x2go-repository-debian
#     http://wiki.x2go.org/doku.php/wiki:x2go-repository-ubuntu # see also about automatic login
class x2go::common() {
  #LK#  apt::key { 'x2go':
  #LK#    key        => 'E1F958385BFE2B6E',
  #LK#    key_server => 'pgp.mit.edu',
  #LK#  }

  case $::operatingsystem {
    'Debian': {
      include apt
      include x2go::repo::debian
    }
    'Ubuntu': {
      include apt
      include x2go::repo::ubuntu
      # apt::ppa { "ppa:x2go/stable": } this does not work as it is interactive!
      #LK#file{'/etc/apt/sources.list.d/x2go-stable-trusty.list':
      #LK#  ensure  => present,
      #LK#  content => "deb http://ppa.launchpad.net/x2go/stable/ubuntu trusty main\n",
      #LK#  notify  => Exec['apt_update'],
      #LK#}
      # gpg: key 0A53F9FD: public key "Launchpad PPA for x2go" imported
      # /etc/apt/sources.list.d/x2go-stable-trusty.list
      # deb http://ppa.launchpad.net/x2go/stable/ubuntu trusty main


    } # apply the redhat class
    default: {
      fail("\nx2go not (yet?) supported under ${::operatingsystem}!!")
    }
  }
}
