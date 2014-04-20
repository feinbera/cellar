class Shelf < ActiveRecord::Base
    belongs_to :beer_cellar
    has_many :boxes, :as => :container
    has_many :bottles, :as => :container
end
