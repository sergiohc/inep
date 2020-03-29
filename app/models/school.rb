# School.rb
class School < ApplicationRecord
  validates :name, presence: true  
  attr_accessor :location


  def location 
    state = Ibge::Reader::State.read
    uf_name = state.find { |item| item[:code].include? self.uf }
    
    municipality = Ibge::Reader::Municipality.read if municipality.blank?
    municipality = municipality.find { |item| item[:full_code].include? self.city }

    {
        state: "#{state[:state_name]} - #{state[:state_federative_unit]}",
        city: municipality[:name]
    }
  end
end