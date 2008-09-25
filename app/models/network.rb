class Network < ActiveRecord::Base
    has_many :ips
    #has_many :comments
    
    validates_presence_of :net_name, :net_address, :subnet
    validates_uniqueness_of :net_address, :message => "already exists"
end
