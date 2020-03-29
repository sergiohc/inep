require 'csv'

namespace :csv do
  desc "Importa o arquivo escolas.csv"
  task import: :environment do
    state = Ibge::Reader::State.read
    municipality = Ibge::Reader::Municipality.read
    
    CSV.foreach('public/escolas.csv', col_sep: '|').with_index do |column, index|
      unless (index == 0)
        uf_name = state.find { |item| item[:code].include? column[10] }
        municipality_name = municipality.find { |item| item[:full_code].include? column[11] }

        School.create!(
          id: column[1], 
          name: column[2], 
          uf: "#{uf_name[:state_name]} - #{uf_name[:state_federative_unit]}", 
          city: municipality_name[:name] 
        )
      end
    end
  end
end