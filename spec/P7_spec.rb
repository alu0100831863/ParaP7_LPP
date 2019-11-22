RSpec.describe P7 do
  it "has a version number" do
    expect(P7::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end

require 'spec_helper'
require '/home/usuario/LPP/ListaTDD/P7/lib/P7/alimentos'
require '/home/usuario/LPP/ListaTDD/P7/lib/P7/lista'
#fin require

describe Alimentos do
	before :each do		
		@carne_vaca = Alimentos.new('carne de vaca', 21.1, 0.0, 3.1, 50.0, 164.0)
		@carne_cordero = Alimentos.new('carne de cordero', 18.0, 0.0, 17.0, 20.0, 185.0)
		@camarones = Alimentos.new('camarones', 17.6, 1.5, 0.6, 18.0, 2.0)
		@chocolate = Alimentos.new('chocolate', 5.3, 47.0, 30.0, 2.3, 3.4)
		@salmon = Alimentos.new('salmon', 19.9, 0.0, 13.6, 6.0, 3.7)
		@cerdo = Alimentos.new('cerdo', 21.5, 0.0, 6.3, 7.6, 11.0)
		@pollo = Alimentos.new('pollo', 20.6, 0.0, 5.6, 5.7, 7.1)
		@queso = Alimentos.new('queso', 25.0, 1.3, 33.0, 11.0, 41.0)
		@cerveza = Alimentos.new('cerveza', 0.5, 3.6, 0.0, 0.24, 0.22)
		@leche_vaca = Alimentos.new('leche de vaca', 3.3, 4.8, 3.2, 3.2, 8.9)
		@huevos = Alimentos.new('huevos', 13.0, 1.1, 11.0, 4.2, 5.7)
		@cafe = Alimentos.new('cafe', 0.1, 0.0, 0.0, 0.4, 0.3)
		@tofu = Alimentos.new('tofu', 8.0, 1.9, 4.8, 2.0, 2.2)
		@lentejas = Alimentos.new('lentejas', 23.5, 52.0, 1.4, 0.4, 3.4)
		@nuez = Alimentos.new('nuez', 20.0, 21.0, 54.0, 0.3, 7.9)

        @listaEspanyola = Lista.new(nil)
            @listaEspanyola.insert_tail(@carne_vaca)
            @listaEspanyola.insert_tail(@carne_cordero)
            @listaEspanyola.insert_tail(@queso)
            @listaEspanyola.insert_tail(@cerveza)

        @listaVasca = Lista.new(nil)
            @listaVasca.insert_tail(@carne_vaca)
            @listaVasca.insert_tail(@lentejas)
            @listaVasca.insert_tail(@cafe)
            @listaVasca.insert_tail(@huevos)
            
        @listaVegetaria = Lista.new(nil)
            @listaVegetaria.insert_tail(@leche_vaca)
            @listaVegetaria.insert_tail(@huevos)
        
        @listaVegetaliana = Lista.new(nil)
            @listaVegetaliana.insert_tail(@carne_vaca)
            @listaVegetaliana.insert_tail(@lentejas)
            @listaVegetaliana.insert_tail(@cafe)
            @listaVegetaliana.insert_tail(@huevos)
            
        @listaCarne = Lista.new(nil)
            @listaCarne.insert_tail(@carne_vaca)
            @listaCarne.insert_tail(@lentejas)
            @listaCarne.insert_tail(@cafe)
            @listaCarne.insert_tail(@huevos)

        @node = Node.new(44, nil, nil)
    end

end
