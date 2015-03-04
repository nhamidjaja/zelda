class Link < ActiveRecord::Base
  validates :vanity_url, presence: true, uniqueness: true
  validates :destination_url, presence: true
end
