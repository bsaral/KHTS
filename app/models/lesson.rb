class Lesson < ActiveRecord::Base
  attr_accessible :eyt,:sky,:tg,:ebh,:elt,:ilt
  belongs_to :upload
end
