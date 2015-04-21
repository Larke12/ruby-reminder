class Reminder < ActiveRecord::Base
  attr_accessible :title, :content
  
  validates :title, :content, :presence => true
  # validates :title, :length => ( :minimum => 2 )
  validates :title, :uniqueness => { :message => "This reminder is already present." }
end