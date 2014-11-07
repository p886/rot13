require 'spec_helper'

describe Rot13 do
  it 'transforms a string correctly' do
    expect(Rot13.new('this is a test').transform).to eq('guvf vf n grfg')
  end
end
