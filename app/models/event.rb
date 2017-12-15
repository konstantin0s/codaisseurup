class Event < ApplicationRecord

  belongs_to :user
  has_and_belongs_to_many :categories
  # has_many :events, dependent: :destroy

   has_many :photos

   has_many :bookings, dependent: :destroy

   has_many :guests, through: :bookings, source: :user

  validates :name, presence: true, length: { maximum: 50 }
validates :price, presence: true
validates :capacity, presence: true
  validates :location, presence: true
  validates :starts_at, presence: true
  validates :ends_at, presence: true
  #validates_date :starts_at, on_or_before: lambda { ends_at }
  validates :description, presence: true, length: { maximum: 500 }

  #validate :start_must_be_before_end_time

  def bargain?
    price < 30
  end

  def self.order_by_price
    order :price
  end

end
