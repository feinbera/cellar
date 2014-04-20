class Bottle < ActiveRecord::Base
    belongs_to :beer
    belongs_to :user
    belongs_to :container, :polymorphic => true
end
