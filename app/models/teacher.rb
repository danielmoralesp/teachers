class Teacher < ApplicationRecord
  belongs_to :user
  belongs_to :type
  has_many :tutorings
  has_and_belongs_to_many :topics

  validates :phone, :name, presence: true

  after_create :set_default_status

  enum status: [:active, :inactive]

  def set_default_status
  	self.inactive!
  end
end
