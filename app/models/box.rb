class Box < ActiveRecord::Base
    belongs_to :container, :polymorphic => true
    has_many :bottles, :as => :container
end
