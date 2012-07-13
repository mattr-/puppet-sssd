require 'spec_helper'

describe 'sssd', :type => :class do
  let :facts do
    {
      :osfamily => 'RedHat'
    }
  end
  
  it "is a container for subclasses" do
    should include_class('sssd::params')
    should include_class('sssd::install')
    should include_class('sssd::service')
  end
end
