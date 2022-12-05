class User < ApplicationRecord
  has_secure_password
  # adding roles for seller and buyer
  after_create :assign_default_role
  rolify

  has_many :products, dependent: :destroy
  has_many :orders 
  has_many :ordered_items, through: :products

  # validate
  validates :username, :password,  presence: true
  
  validates :username , :email , uniqueness: true 

  private
  # adding roles for seller and buyer
  def assign_default_role
    self.add_role(:buyer) if self.roles.blank?
  end
end
