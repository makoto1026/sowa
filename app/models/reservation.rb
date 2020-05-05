class Reservation < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  
  belongs_to :user
  belongs_to_active_hash :taxi
  belongs_to_active_hash :tour
  belongs_to_active_hash :coopon
  
end
