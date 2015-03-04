class Link < ActiveRecord::Base
  has_many :visitors

  validates :vanity_url, presence: true, uniqueness: true
  validates :destination_url, presence: true
end
