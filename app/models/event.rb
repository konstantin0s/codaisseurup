class Event < ApplicationRecord




  belongs_to :user
  #has_and_belongs_to_many :categories
  has_many :events, dependent: :destroy

  validates :name, presence: true
  validates :starts_at, presence: true
  validates :ends_at, presence: true
  #validates_date :starts_at, on_or_before: lambda { ends_at }
  validates :description, presence: true, length: { maximum: 500 }

  #validate :start_must_be_before_end_time
end
