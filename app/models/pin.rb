class Pin < ActiveRecord::Base
     belongs_to :user

     has_attached_file :image, :styles => { :medium => "500x500>", :thumb => "100x100>" }

:storage => :s3,
            :bucket => 'AwesomeInno',
            :s3_credentials => {:access_key_id => ENV['AKIAI3XBHV4L5BKAM2CA'], :secret_access_key => ENV['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']}

  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/jpg', 'image/png']
  validates :image, presence: true
  validates :image, presence: true
  validates :user_id, presence: true
  

end
