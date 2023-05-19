require 'rails_helper'

RSpec.describe Excavator, type: :model do
    let!(:ticket) {create :ticket}
    let(:nullable_company_excavator) {build :excavator,ticket: ticket , company_name: nil}
    let(:valid_excavator) {build :excavator,ticket: ticket}
    context "when invalid excavator" do
        it 'shouldn\'t save excavator' do
            expect(nullable_company_excavator.valid?).to eq(false)  
        end
    end

    context "when valid excavator" do
        it 'should save excavator' do
            expect(valid_excavator.valid?).to eq(true)  
        end
    end

end