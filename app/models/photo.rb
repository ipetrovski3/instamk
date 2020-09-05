class Photo < ApplicationRecord
  belongs_to :user

  has_one_attached :image

  has_many :photo_hash_tags
  has_many :hash_tags, through: :photo_hash_tags

  validates :image, presence: true

  after_commit :create_hash_tags, on: :create

  def find_hash_tags
    description.to_s.scan(/#\w+/).map { |hash| hash.gsub('#', '') }
  end

  def create_hash_tags
    find_hash_tags.each do |name|
      hash_tags.create(name: name)
    end
  end
end
