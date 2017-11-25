require 'spec_helper'

#TODO only call hiera.yaml for this rspec
#    RSpec.configure do |c|
#      c.hiera_config = 'spec/fixtures/hiera/hiera.yaml'
#    end

describe 'x2go' do
  let(:facts) { StretchFacts }
  context 'when using mustermann.yaml to set configuration values' do
    let(:params) { { } }
    let(:hiera_config) { 'spec/fixtures/hiera/hiera.yaml' }
    it {
      should compile
      should compile.with_all_deps
      should contain_class('x2go::install')
      should_not contain_class('x2go::client')
      should contain_class('x2go::server')
      should contain_class('x2go::repo')
      should_not contain_package('x2goclient')
      should contain_package('x2goserver')
  }
  end
end

describe 'x2go::client' do
  let(:facts) { StretchFacts }
  context 'when using mustermann.yaml to set configuration values' do
    let(:params) { { } }
    let(:pre_condition) { 'include apt' }
    let(:hiera_config) { 'spec/fixtures/hiera/hiera.yaml' }
    it {
      should compile
      should compile.with_all_deps
      should contain_class('apt::update')
      should contain_package('x2goclient').with( { :ensure => 'absent'  } )
    }
  end
end

describe 'x2go::server' do
  let(:facts) { StretchFacts }
  context 'when using mustermann.yaml to set configuration values' do
    let(:params) { { } }
    let(:pre_condition) { 'include apt' }
    let(:hiera_config) { 'spec/fixtures/hiera/hiera.yaml' }
    it {
      should compile
      should compile.with_all_deps
      should contain_class('apt::update')
      should contain_package('x2goserver').with( { :ensure => 'absent'  } )
      should contain_package('x2goserver-extensions').with( { :ensure => 'absent'  } )
      should contain_package('x2goserver-xsession').with( { :ensure => 'absent'  } )
      should contain_class('X2go::Server')
    }
  end
end
