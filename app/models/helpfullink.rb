class Helpfullink < ActiveRecord::Base
  attr_accessible :date_submitted, :description, :title, :url
  has_many :votes, dependent: :destroy
end
