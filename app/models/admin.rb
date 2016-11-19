class Admin < ApplicationRecord

  rolify

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :trackable, :timeoutable

  belongs_to :center, optional: true

end
