require_relative '../rspec_helper'

describe Nfe::ServiceInvoice do
  before(:each) do
    Nfe.api_key('e12cmDevG5iLhSd9Y7BOpxynL86Detjd2R1D5jsP5UGXA8gwxug0Vojl3H9TIzBpbhI')
  end

  it 'should create a ServiceInvoice' do
    customer_params = {borrower: { federalTaxNumber: '01946377198', name: 'Ricardo Caldeira', email: 'ricardo.nezz@gmail.com',
                      postalCode: '21231110', street: 'Rua Do Cliente', number: '1310', additionalInformation: 'AP 202',
                      district: 'Centro', city_code: 4204202, city_name: 'Chapecó', city_state: 'SC' }}

    service_params = { cityServiceCode: '0107', description: 'Manutenção e suporte técnico.', servicesAmount: 0.15 }

    Nfe::ServiceInvoice.company_id("55e8a2c9440c3b0b84ceaa12")
    nfe = Nfe::ServiceInvoice.create(customer_params.merge(service_params))

    expect(nfe["environment"]).to eq('Development')
    expect(nfe["borrower"]["name"]).to eq('Ricardo Caldeira')
  end

  it 'should list all service invoices' do
    service_invoices_list = Nfe::ServiceInvoice.list_all(company_id: "55e8a2c9440c3b0b84ceaa12")
    expect(service_invoices_list["serviceInvoices"].first["flowStatus"]).to eq('WaitingCalculateTaxes')
    expect(service_invoices_list["totalResults"]).to be >= 1
    expect(service_invoices_list["serviceInvoices"].size).to be >= 1
  end

  it 'should list service invoices by page' do
    service_invoices_list = Nfe::ServiceInvoice.list_all(company_id: "55e8a2c9440c3b0b84ceaa12", pageCount: 5, pageIndex: 2)
    expect(service_invoices_list["serviceInvoices"].first["flowStatus"]).to eq('WaitingCalculateTaxes')
    expect(service_invoices_list["totalResults"]).to be >= 1
    expect(service_invoices_list["totalPages"]).to be >= 1
    expect(service_invoices_list["page"]).to eq(2)
    expect(service_invoices_list["serviceInvoices"].size).to be >= 1
  end

  it 'should cancel a ServiceInvoice' do
    skip "To be implemented"
  end

  it 'should retrieve a ServiceInvoice' do
    service_invoice = Nfe::ServiceInvoice.retrieve("55eeff56440c3b0b84ceb48b")
    expect(service_invoice["id"]).to eq("55eeff56440c3b0b84ceb48b")
    expect(service_invoice["rpsStatus"]).to eq("Normal")
  end

  it 'should retrieve a ServiceInvoice pdf file' do
    skip "To be implemented"
  end

  it 'should send a email to Tomador' do
    skip "To be implemented"
  end

  it 'should get a ServiceInvoice xml file' do
    skip "To be implemented"
  end

  it 'should retrieve Service Invoices from Prefeitura' do
    skip "To be implemented"
  end

end
