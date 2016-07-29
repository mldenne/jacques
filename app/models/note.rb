class Note < ApplicationRecord

  belongs_to :user, optional: true
  validates :title, presence: true
  validates :body, presence: true

  has_many :taggings
  has_many :tags, through: :taggings

  # def self.tagged_with(name)
  #   Tag.find_by_name!(name).notes
  # end

end
