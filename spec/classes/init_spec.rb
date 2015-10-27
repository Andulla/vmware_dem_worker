require 'spec_helper'
describe 'vmware_dem_worker' do

  context 'with defaults for all parameters' do
    it { should contain_class('vmware_dem_worker') }
  end
end
