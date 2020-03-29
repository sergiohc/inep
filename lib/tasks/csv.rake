require 'csv'

namespace :csv do
  desc "Importa o arquivo escolas.csv"
  task import: :environment do
    CSV.foreach('public/escolas.csv', col_sep: '|').with_index do |column, index|
     unless (index == 0)
       School.create!(id: column[1], name: column[2]) #CO_ENTIDADE - ID / NO_ENTIDADE - School name
     end
    end
  end
end