class Style < ActiveRecord::Base
    has_many :children, class_name: "Style", foreign_key: "parent_id"
    belongs_to :parent, class_name: "Style"
    
    has_many :beers
end
