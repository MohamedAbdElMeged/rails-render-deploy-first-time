require 'rails_helper'

RSpec.describe Ticket, type: :model do
    let(:invalid_ticket) {build :ticket, request_number: nil}
    let(:valid_ticket) {build :ticket}

    context "when invalid excavator" do
        it 'shouldn\'t save excavator' do
            expect(invalid_ticket.valid?).to eq(false)  
        end
    end

    context "when valid excavator" do
        it 'should save excavator' do
            expect(valid_ticket.valid?).to eq(true)  
        end
    end
end