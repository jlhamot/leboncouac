class Musician < ActiveRecord::Base
    validates_presence_of :firstname, :lastname
end
