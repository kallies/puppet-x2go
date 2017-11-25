require 'rspec-puppet'
require 'puppetlabs_spec_helper/module_spec_helper'

fixture_path = File.expand_path(File.join(__FILE__, '..', 'fixtures'))
StretchFacts = { :osfamily => 'Debian',
                :operatingsystem => 'Debian',
                :operatingsystemrelease => 'stretch',
                :lsbdistcodename => 'stretch',
                :lsbdistid => 'debian',
                 # for concat/manifests/init.pp:193
                :id => 'id',
                :concat_basedir => '/opt/concat',
                :path => '/path',
                :ipaddress  => '192.168.192.168',
                :fqdn       => 'fully.qualified.domain.com',
                :hostname   => 'fully',
                :os         => {'name'=>'Debian', 'family'=>'Debian', 'release'=>{'major'=>'9', 'minor'=>'1', 'full'=>'9.1'}, 'lsb'=>{'distcodename'=>'stretch', 'distid'=>'Debian', 'distdescription'=>'Debian GNU/Linux 9.1 (stretch)', 'distrelease'=>'9.1', 'majdistrelease'=>'9', 'minordistrelease'=>'1'}},

              }
Managed_tce_regexp = /managed by puppet x2go\/tce.pp/
HIERA_HINT = /#.+You may set a proxy via hiera apt::proxy_host and apt::proxy_port/

RSpec.configure do |c|
  c.module_path = File.join(fixture_path, 'modules')
  c.manifest_dir = File.join(fixture_path, 'manifests')
end
#  at_exit { RSpec::Puppet::Coverage.report! }
