# x2go module for Puppet

This module provides classes to manage x2go client, server and thin client environment (aka tce).

You may choose to use either the baikal version (only bug-fixes) or the main.

## About this fork

This module has been forked from [ngiger/puppet-x2go](https://github.com/ngiger/puppet-x2go "ngiger/puppet-x2go") because 
[the original author switched to Saltstack](https://github.com/ngiger/puppet-x2go/pull/5#issuecomment-262303301 "PR 5, issuecomment").

## Examples

See the files under test for more examples.

### To install the x2go client

```
class { 'x2go':
  install_client => true,
}
```

This sets `ensure => present` for the package. If you want to set a different
value, you can override the `x2go::client::ensure` and `x2go::server::ensure`
parameter using hiera.

### To remove the x2go client:

```
class { 'x2go::client':
  ensure => 'absent',
}
```
### To only install the x2go server:

```
class { 'x2go':
  install_client => false,
  install_server => true,
}
```

### To install a x2go thin client environment (tce)

:red_circle: The `tce` class has additional dependencies - which are not needed for x2go `client` or `server` class.

Dependencies when using the thin client environment

* `erwbgy-ssh` >= 0.2.1
* `domcleal-augeasproviders` >= 1.2.0
* `ngiger-dnsmasq` >= 0.1.0
* `jbeard-nfs` >= 0.1.7
* `jbeard-portmap` >= 0.1.7

```
class { 'x2go::tce':
  version          => 'latest',
  x2go_tce_base    => '/opt/x2gothinclient', # will have chroot and etc directories below
  export_2_network => '192.168.1.0/255.255.255.0',
}
```

You will probably have to customize your installation: see the [x2go wiki](http://wiki.x2go.org/doku.php/wiki:advanced:tce:install "x2go documentation: tce:install")

## License

Copyright 2011-2014, Niklaus Giger
          2016-2018, Lukas Kallies

This program is free software; you can redistribute  it and/or modify it under the terms of the GNU General Public License version 3 as published by
the Free Software Foundation.
