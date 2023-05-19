class Excavator < ApplicationRecord
  belongs_to :ticket
  validates_presence_of :company_name
end
