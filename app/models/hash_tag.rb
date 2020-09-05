class HashTag < ApplicationRecord
  has_many :photo_hash_tags
  has_many :photos, through: photo_hash_tags
end
