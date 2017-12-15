class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :events, dependent: :destroy
         has_one :profile

         has_many :registrations, dependent: :destroy

         has_many :registrated_events, through: :registrations, source: :event

 def full_name
   return profile.full_name if profile?

   email
 end

 def profile?
   profile.present? && profile.persisted?
 end

       end
