require 'spec_helper'

describe 'x2go::server' do
  let(:facts) { StretchFacts }
  let(:hiera_config) { }
  let(:pre_condition) { 'include apt' }

  context 'when running with default parameters' do
    it {
      should compile
      should compile.with_all_deps
      should contain_class('apt::update')
      should contain_package('x2goserver').with( { :ensure => 'present'  } )
      should contain_package('x2goserver-extensions').with( { :ensure => 'present'  } )
      should contain_package('x2goserver-xsession').with( { :ensure => 'present'  } )
    }
  end

  context 'when running with ensure absent' do
    let(:params) { { :ensure => 'absent',}}
    it {
      should compile
      should compile.with_all_deps
      should contain_class('apt::update')
      should contain_package('x2goserver').with( { :ensure => 'absent'  } )
      should contain_package('x2goserver-extensions').with( { :ensure => 'absent'  } )
      should contain_package('x2goserver-xsession').with( { :ensure => 'absent'  } )
    }
  end

  context 'when running with ensure installed' do
    let(:params) { { :ensure => 'installed' } }
    it {
      should compile
      should compile.with_all_deps
      should contain_class('apt::update')
      should contain_class('Apt')
      should contain_package('x2goserver').with( { :ensure => 'installed'  } )
      should contain_package('x2goserver-extensions').with( { :ensure => 'installed'  } )
      should contain_package('x2goserver-xsession').with( { :ensure => 'installed'  } )
    }
  end

end
