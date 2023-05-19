class ChangeWellKnownTextColumnInTicketsTable < ActiveRecord::Migration[7.0]
  def change
    change_column :tickets, :well_known_text, :string
  end
end
