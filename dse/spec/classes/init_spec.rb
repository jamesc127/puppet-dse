require 'spec_helper'
describe 'dse' do

  context 'with defaults for all parameters' do
    it { should contain_class('dse') }
  end
end
