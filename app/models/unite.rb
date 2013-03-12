class Unite < ActiveRecord::Base
  attr_accessible :u_eyt,:u_sky,:u_tg,:u_ebh,:u_elt,:u_ilt
  belongs_to :upload
end
