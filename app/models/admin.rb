class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  ROLES = %i[admin default].freeze

  # rubocop:disable Style/RedundantSelf
  def is?(requested_role)
    self.role == requested_role.to_s
  end
  # rubocop:enable Style/RedundantSelf
end
