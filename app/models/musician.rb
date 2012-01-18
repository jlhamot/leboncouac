require 'SecureRandom'

class Musician < ActiveRecord::Base
    validates_presence_of :firstname, :lastname, :email
    before_create :generate_uuid
    
    
    
    
    def generate_uuid()
      self.uuid = SecureRandom.urlsafe_base64()
    end
    
    def is_active
      active
    end
    
    def set_active
      self.active = true
    end
end
