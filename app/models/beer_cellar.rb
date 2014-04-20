class BeerCellar < ActiveRecord::Base
    has_many :shelves
    has_many :boxes, :as => :container
    has_many :bottles, :as => :container
end
