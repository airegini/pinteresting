class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_many :pins 

   has_many :friendships
   has_many :friends, :through => :friendships  

	def add_friend(friend)
		friendship = friendships.build(:friend_id => friend.id)
		if !friendship.save
		logger.debug "User '#{friend.email}' already exists in the user's friendship list."
		end
	end  

	def all_pins
		Pin.find(:all, :conditions => ["user_id in (?)", friends.map(&:id).push(self.id)], :order => "created _at desc" )
	end


    validates :name, presence: true 
end

