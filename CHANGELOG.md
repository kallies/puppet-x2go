# Changelog

All notable changes to this project will be documented in this file.

## [v0.6.0](https://github.com/kallies/puppet-x2go/tree/v0.6.0)
[Full Changelog](https://github.com/kallies/puppet-x2go/compare/v0.5.1...v0.6.0)

* Re-add Thin Client Environment (tce) code
* Update README regarding soft-dependencies for tce
* Re-add hieradata for tce

## [v0.5.1](https://github.com/kallies/puppet-x2go/tree/v0.5.1)
[Full Changelog](https://github.com/kallies/puppet-x2go/compare/v0.5.0...v0.5.1)

* Update README regarding client removal

## [v0.5.0](https://github.com/kallies/puppet-x2go/tree/v0.5.0)
[Full Changelog](https://github.com/kallies/puppet-x2go/compare/0.3.0...v0.5.0)

* Cleanup and module migration (kallies-x2go)
* Fix spec tests and examples, update facts
* Use puppet 4 syntax, switch to YARD documentation

## 0.3.3

* Resolve repo dependencies
* Clean up dependencies with install and service class
* Correct Issues and Source URI in metadata

## 0.3.2

* Remove tce example
* Rename common class to repo
* Add flag for server install
* Extend el repo class (not yet ready)
* Clean up includes, move to repo/*

## 0.3.1

* Fix wrong PGP key and change apt repo syntax.
* Add stdlib as requirement
* require puppetlabs-apt >= 2.0.0

## 0.3.0

* Fix rake test
* clean up code
* improve documentation

## 0.2.1

* Changes to reflect fork from ngiger/puppet-x2go

## 0.1.3

* Added support for x2go thin client environment

## 0.1.2

* x2goserver does not have status command on debian. Thanks to Carlos Sanchez for the patch!
* Avoid warnings in the puppet forge by using 1.0.0 version. Thanks to Carlos Sanchez for the patch!

## 0.1.1

* Remove inexisting stage. Thanks to Carlos Sanchez for the patch!

## 0.1.0

* initial release
