# School.rb
class School < ApplicationRecord
  validates :name, presence: true  
end