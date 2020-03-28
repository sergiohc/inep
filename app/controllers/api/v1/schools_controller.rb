require 'csv'

class Api::V1::SchoolsController < Api::V1::ApiController

  def index 
    csv = CSV.read('public/ESCOLAS1.CSV', {:headers => true, :col_sep => '|'})
    
    # csv[2][1] 2 - col 1 - row


    CSV.foreach('public/ESCOLAS1.CSV', col_sep: '|').with_index do |linha, indice|
      puts linha[1]
      puts linha[2]
    end

  end

end