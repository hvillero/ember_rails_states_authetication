class State < ActiveRecord::Base
  default_scope -> { order("LENGTH(state) ASC") }
end
