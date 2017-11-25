require 'spec_helper'

describe 'x2go' do
  let(:facts) { StretchFacts }

  context 'when running with default parameters' do
    it {
      should compile
      should compile.with_all_deps
      should contain_class('x2go::install')
      should contain_class('x2go::client')
      should contain_class('x2go::repo')
      should contain_package('x2goclient')
    }
  end

  context 'when running with version installed' do
    let(:params) { { :version => 'installed',}}
    it {
      should compile
      should compile.with_all_deps
      should create_class('x2go')
    }
  end

  context 'when running with version latest' do
    let(:params) { { :version => 'latest' } }
    it {
      should compile
      should compile.with_all_deps
      should contain_exec('apt_update')
      should contain_class('x2go::repo::debian')
      should contain_apt__key ('Add key: 972FD88FA0BAFB578D0476DFE1F958385BFE2B6E from Apt::Source x2go')
    }
  end
end
