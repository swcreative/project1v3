class Note < ApplicationRecord
  belongs_to :users, :optional => true
  belongs_to :shares, :optional => true
end
