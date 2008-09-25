class Ip < ActiveRecord::Base
    validates_presence_of :ip_address, :subnet
    validates_presence_of :network_id, :message => "is missing, please contact Tyler"
    
    belongs_to :network
    validates_associated :network
    #has_many :comments
end
