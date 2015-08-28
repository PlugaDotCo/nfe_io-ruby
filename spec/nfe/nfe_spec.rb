require_relative '../rspec_helper'

describe Nfe do
  it 'has a version number' do
    expect(Nfe::VERSION).not_to be nil
  end
  
  it 'should set api key' do
    Nfe.api_key('e12cmDevG5iLhSd9Y7BOpxynL86Detjd2R1D5jsP5UGXA8gwxug0Vojl3H9TIzBpbhI')
    Nfe.company_id('')
    expect(Nfe.access_keys).to eq('e12cmDevG5iLhSd9Y7BOpxynL86Detjd2R1D5jsP5UGXA8gwxug0Vojl3H9TIzBpbhI:')
  end

  it 'should set api secret' do
    Nfe.api_key('')
    Nfe.company_id('55df4dc6b6cd9007e4f13ee8')
    expect(Nfe.access_keys).to eq(':55df4dc6b6cd9007e4f13ee8')
  end

  it 'should get empty access keys' do
    Nfe.api_key('')
    Nfe.company_id('')
    expect(Nfe.access_keys).to eq(":")
  end
end
