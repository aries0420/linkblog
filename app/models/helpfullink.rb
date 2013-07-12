class Helpfullink < ActiveRecord::Base
  attr_accessible :date_submitted, :description, :title, :url
  has_many :votes, dependent: :destroy
  default_scope :order => "date_submitted DESC"
end
