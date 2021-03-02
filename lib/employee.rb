class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, presence: true, numericality: { only_integer: true, greater_than: 40, less_than: 200 }
  validates_associated :store

  # before_create :password_generator

  after_create :password_generator

  private
  
  def password_generator 
    characters = ('A'..'Z').to_a + ('a'..'z').to_a
    length = 8
    #triple dot excludes end value in join
    #use sortby because only looking at one array
    self.password = characters.sort_by { rand }.join[0...length]
    self.save
  end

end
