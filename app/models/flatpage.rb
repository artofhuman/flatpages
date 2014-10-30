class Flatpage < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, :use => :slugged

  validates_presence_of :name, :slug
end
