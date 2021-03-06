class Pin < ActiveRecord::Base
     belongs_to :user

     has_attached_file :image, :styles => { :medium => "500x500>", :thumb => "100x100>" }


  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/jpg', 'image/png']
  validates :image, presence: true
  validates :image, presence: true
  validates :user_id, presence: true
  validates :name, presence: true

end
