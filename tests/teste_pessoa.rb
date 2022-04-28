require "minitest/autorun"
require_relative "../pessoa"
require "date"

class TestePessoa < Minitest::Test
 def test_pessoa_tem_uma_data_de_nascimento
    pessoa = Pessoa.new
    pessoa.data_nascimento = Date.parse("2000-01-01")
    assert_equal Date.parse("2000-01-01"), pessoa.data_nascimento
 end
 
 def test_pessoa_calcula_idade
    pessoa = Pessoa.new
    pessoa.data_nascimento = Date.parse("1981-10-31")
    assert_equal 40, pessoa.idade(Date.parse "2022-04-28")
 end

 def test_pessoa_calcula_idade_comparando_data_de_hoje
    pessoa = Pessoa.new
    pessoa.data_nascimento = Date.parse("1981-10-31")
    assert pessoa.idade >= 40
 end
 
end