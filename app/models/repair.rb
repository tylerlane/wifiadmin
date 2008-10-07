class Repair < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :ip_address
  validates_format_of :ip_address, :with => /^(\d{1,3}\.){3}\d{1,3}$/

end
