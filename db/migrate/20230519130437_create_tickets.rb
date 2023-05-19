class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string :request_number, null: false
      t.string :sequence_number, null: false
      t.string :request_type, null: false
      t.string :request_action, null: false
      t.datetime :response_due_date_time
      t.string :primary_service_area_code
      t.string :additional_service_area_codes, array: true, defalt: []
      t.polygon :well_known_text, geographic: true
      t.timestamps
    end
  end
end
