require 'spec_helper.rb'
require_relative '../lib/P7/alimentos.rb'
require_relative '../lib/P7/lista.rb'

#RSpec.describe P7 do
#  it "has a version number" do
#    expect(P7::VERSION).not_to be nil
#  end
#
#  it "does something useful" do
#    expect(false).to eq(true)
#  end
#end

#include RSpec

RSpec.describe Lista do
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
            	@listaEspanyola.insert_tail(@salmon)
            	@listaEspanyola.insert_tail(@camarones)
            	@listaEspanyola.insert_tail(@queso)
            	@listaEspanyola.insert_tail(@cerveza)

        	@listaVasca = Lista.new(nil)
            	@listaVasca.insert_tail(@carne_vaca)
            	@listaVasca.insert_tail(@cafe)
            	@listaVasca.insert_tail(@chocolate)
            
        	@listaVegetaria = Lista.new(nil)
            	@listaVegetaria.insert_tail(@leche_vaca)
            	@listaVegetaria.insert_tail(@huevos)
        
        	@listaVegetaliana = Lista.new(nil)
            	@listaVegetaliana.insert_tail(@lentejas)
            	@listaVegetaliana.insert_tail(@tofu)
            	@listaVegetaliana.insert_tail(@nuez)
            
        	@listaCarne = Lista.new(nil)
            	@listaCarne.insert_tail(@carne_cordero)
            	@listaCarne.insert_tail(@cerdo)
            	@listaCarne.insert_tail(@pollo)

        	@node = Node.new(10, nil, nil)
    	end
    
    describe "#Lista: " do
        it "Comprobacion de los nodos: " do
            expect(@node).to be_truthy
            expect(@node.value).to be(10)
            expect(@node.next).to eq(nil)
            expect(@node.prev).to eq(nil)
        end
        it "Comprobacion del tail de la Lista: " do
            expect(@listaEspanyola.tail.value).to eq(@cerveza)
            expect(@listaVasca.tail.value).to eq(@chocolate)
            expect(@listaVegetaria.tail.value).to eq(@huevos)
            expect(@listaVegetaliana.tail.value).to eq(@nuez)
            expect(@listaCarne.tail.value).to eq(@pollo)
        end
        it "Comprobacion del head de la Lista: " do
            expect(@listaEspanyola.head.value).to eq(@salmon)
            expect(@listaVasca.head.value).to eq(@carne_vaca)
            expect(@listaVegetaria.head.value).to eq(@leche_vaca)
            expect(@listaVegetaliana.head.value).to eq(@lentejas)
            expect(@listaCarne.head.value).to eq(@carne_cordero)
        end
        it "Parámetros de tail: " do
            expect(@listaEspanyola.tail.value.nombre).to eq('cerveza')
            expect(@listaVasca.tail.value.nombre).to eq('chocolate')
            expect(@listaVegetaria.tail.value.nombre).to eq('huevos')
            expect(@listaVegetaliana.tail.value.nombre).to eq('nuez')
            expect(@listaCarne.tail.value.nombre).to eq('pollo')
        end
        it "Parámetros de head: " do
            expect(@listaEspanyola.head.value.nombre).to eq('salmon')
            expect(@listaVasca.head.value.nombre).to eq('carne de vaca')
            expect(@listaVegetaria.head.value.nombre).to eq('leche de vaca')
            expect(@listaVegetaliana.head.value.nombre).to eq('lentejas')
            expect(@listaCarne.head.value.nombre).to eq('carne de cordero')
        end
        it "Inserción correcta: " do
            @listaVegetaria.insert_tail(@tofu)
            expect(@listaVegetaria.tail.value).to eq(@tofu)
        end
        it "Extracción head: " do
            expect(@listaVegetaria.extract_head).to eq(@leche_vaca)
        end
        it "Extracción tail: " do
            expect(@listaVegetaria.extract_tail).to eq(@huevos) 
        end
        it "Doblemente enlazada: PREV: " do
            expect(@node.prev).to eq(nil)
	    expect(@listaVegetaria.tail.prev.value).to eq(@leche_vaca)
        end
        it "Doblemente enlazada: NEXT: " do
            expect(@node.next).to eq(nil)
            @listaVegetaria.insert_tail(@tofu)
            expect(@listaVegetaria.head.next.value).to eq(@huevos)
        end
    end
    describe "#Instanciaciones y herencias: " do
        it "Is_a: " do
            expect(@tofu).is_a?(Object)
            expect(@node).is_a?(BasicObject)
        end
        it "Instance_of: " do
            expect(@tofu).instance_of?(Alimentos)
            expect(@listaVegetaria).instance_of?(Lista)
        end
    end
end
