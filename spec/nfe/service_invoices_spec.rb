require_relative '../rspec_helper'

describe Nfe::ServiceInvoice do

  it 'should create a ServiceInvoice' do
    # client_params = { federalTaxNumber: '00000000000', name: 'Nome do Cliente', email: 'cliente@email.com',
    #                   postalCode: '00000000', street: 'Rua Do Cliente', number: '1310', additionalInformation: 'AP 202',
    #                   district: 'Centro', city_code: 4204202, city_name: 'Chapecó', city_state: 'SC' }
    # service_params = { cityServiceCode: '0107', description: 'Manutenção e suporte técnico.', servicesAmount: 0.01 }
    # invoice = Nfe::ServiceInvoice.new
    # invoice.client = client_params
    # invoice.service = service_params
    # nf = invoice.create
    # expect(nf.id).to_not be_nil
  end

  it 'should list all service invoices' do
  end

  it 'should cancel a ServiceInvoice' do
  end

  it 'should retrieve a ServiceInvoice' do
  end

  it 'should retrieve a ServiceInvoice pdf file' do
  end

  it 'should send a email to Tomador' do
  end

  it 'should get a ServiceInvoice xml file' do
  end

  it 'should retrieve Service Invoices from Prefeitura' do
  end

end
