require "date"

class Pessoa
    attr_accessor :data_nascimento

    def idade(data_referencia = Date.today)
       (data_referencia - @data_nascimento).to_i / 365
    end
    
end