class AddTicketIdInExcavatorTable < ActiveRecord::Migration[7.0]
  def change
    add_reference :excavators, :ticket, index: true
  end
end
