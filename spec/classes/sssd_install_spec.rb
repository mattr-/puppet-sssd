require 'spec_helper'

describe 'sssd::install', :type => 'class' do

  context "On a RedHat OS" do
    let :facts do
      {
        :osfamily => 'RedHat'
      }
    end

    it "should have the right package" do
      should contain_package('sssd').with({:name => 'sssd'})
    end
  end

  context "On everything else, raise an error" do
    let :facts do
      {
        :osfamily => 'Darwin'
      }
    end

    it "should expect an error" do
      expect { should raise_error(Puppet::Error) }
    end

  end
end
