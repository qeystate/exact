require 'spec_helper'
require 'pry'

describe Exact::Account do
  describe "#exact_service" do
    it 'returns proper service' do
      expect(subject.exact_service).to eq('crm')
    end
  end

  describe "#exact_endpoint" do
    it 'return proper endpint' do
      expect(subject.exact_endpoint).to eq('Accounts')
    end
  end

  describe "#guid" do
    it 'return proper guid' do
      expect(subject.guid).to eq(nil)
      subject.ID = 12
      expect(subject.guid).to eq("12")
    end
  end
end
