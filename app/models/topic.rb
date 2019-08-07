class Topic < ApplicationRecord
	has_many :tutorings
	has_and_belongs_to_many :teachers
end
