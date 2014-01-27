class Pin < ActiveRecord::Base
	require 'paperclip'
     belongs_to :user
     has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  validates :image, presence: true
  validates :name, presence: true
  

end
