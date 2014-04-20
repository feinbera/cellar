class Beer < ActiveRecord::Base
    belongs_to :brewery
    validates :brewery, presence: true

    belongs_to :style
    validates :style, presence: true
end
