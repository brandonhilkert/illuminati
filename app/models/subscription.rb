class Subscription < ActiveRecord::Base
  has_many :topics, dependent: :delete_all
  belongs_to :frequency
  accepts_nested_attributes_for :topics

  validates :email, :presence => true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
