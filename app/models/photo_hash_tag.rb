class PhotoHashTag < ApplicationRecord
  belongs_to :photo
  belongs_to :hash_tag
end
