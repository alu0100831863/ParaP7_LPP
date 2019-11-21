require 'spec_helper' 
require '/home/usuario/LPP/TDD/P6/lib/alimentos'

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
	end

	describe "#Almacenamiento: " do
		it "Comprobacion: " do
			expect(@carne_vaca).to eq(@carne_vaca)
			expect(@carne_cordero).to eq(@carne_cordero)
			expect(@camarones).to eq(@camarones)
			expect(@chocolate).to eq(@chocolate)
			expect(@salmon).to eq(@salmon)
			expect(@cerdo).to eq(@cerdo)
			expect(@pollo).to eq(@pollo)
			expect(@queso).to eq(@queso)
			expect(@cerveza).to eq(@cerveza)
			expect(@leche_vaca).to eq(@leche_vaca)
			expect(@huevos).to eq(@huevos)
			expect(@cafe).to eq(@cafe)
			expect(@tofu).to eq(@tofu)
			expect(@lentejas).to eq(@lentejas)
			expect(@nuez).to eq(@nuez)
		end
	end

	describe "#Existe_Name: " do
		it "Existe Nombre: " do
			expect(@carne_vaca.get_name).not_to eq('')
			expect(@carne_cordero.get_name).not_to eq('')
			expect(@camarones.get_name).not_to eq('')
			expect(@chocolate.get_name).not_to eq('')
			expect(@salmon.get_name).not_to eq('')
			expect(@cerdo.get_name).not_to eq('')
			expect(@pollo.get_name).not_to eq('')
			expect(@queso.get_name).not_to eq('')
			expect(@cerveza.get_name).not_to eq('')
			expect(@leche_vaca.get_name).not_to eq('')
			expect(@huevos.get_name).not_to eq('')
			expect(@cafe.get_name).not_to eq('')
			expect(@tofu.get_name).not_to eq('')
			expect(@lentejas.get_name).not_to eq('')
			expect(@nuez.get_name).not_to eq('')
		end
	end

	describe "#Existe_gases: " do
		it "Existe valor gas: " do
			expect(@carne_vaca.get_gases).not_to eq('')
			expect(@carne_cordero.get_gases).not_to eq('')
			expect(@camarones.get_gases).not_to eq('')
			expect(@chocolate.get_gases).not_to eq('')
			expect(@salmon.get_gases).not_to eq('')
			expect(@cerdo.get_gases).not_to eq('')
			expect(@pollo.get_gases).not_to eq('')
			expect(@queso.get_gases).not_to eq('')
			expect(@cerveza.get_gases).not_to eq('')
			expect(@leche_vaca.get_gases).not_to eq('')
			expect(@huevos.get_gases).not_to eq('')
			expect(@cafe.get_gases).not_to eq('')
			expect(@tofu.get_gases).not_to eq('')
			expect(@lentejas.get_gases).not_to eq('')
			expect(@nuez.get_gases).not_to eq('')
		end
	end

	describe "#Existe_terreno: " do
		it "Existe valor terreno: " do
			expect(@carne_vaca.get_terreno_uso).not_to eq('')
			expect(@carne_cordero.get_terreno_uso).not_to eq('')
			expect(@camarones.get_terreno_uso).not_to eq('')
			expect(@chocolate.get_terreno_uso).not_to eq('')
			expect(@salmon.get_terreno_uso).not_to eq('')
			expect(@cerdo.get_terreno_uso).not_to eq('')
			expect(@pollo.get_terreno_uso).not_to eq('')
			expect(@queso.get_terreno_uso).not_to eq('')
			expect(@cerveza.get_terreno_uso).not_to eq('')
			expect(@leche_vaca.get_terreno_uso).not_to eq('')
			expect(@huevos.get_terreno_uso).not_to eq('')
			expect(@cafe.get_terreno_uso).not_to eq('')
			expect(@tofu.get_terreno_uso).not_to eq('')
			expect(@lentejas.get_terreno_uso).not_to eq('')
			expect(@nuez.get_terreno_uso).not_to eq('')
		end
	end

	describe "#Existe_metodo_para_obtener_nombre_alimento: " do
		it "Nombre alimento: " do
			expect(@carne_vaca.get_name).to eq('carne de vaca')
			expect(@carne_cordero.get_name).to eq('carne de cordero')
			expect(@camarones.get_name).to eq('camarones')
			expect(@chocolate.get_name).to eq('chocolate')
			expect(@salmon.get_name).to eq('salmon')
			expect(@cerdo.get_name).to eq('cerdo')
			expect(@pollo.get_name).to eq('pollo')
			expect(@queso.get_name).to eq('queso')
			expect(@cerveza.get_name).to eq('cerveza')
			expect(@leche_vaca.get_name).to eq('leche de vaca')
			expect(@huevos.get_name).to eq('huevos')
			expect(@cafe.get_name).to eq('cafe')
			expect(@tofu.get_name).to eq('tofu')
			expect(@lentejas.get_name).to eq('lentejas')
			expect(@nuez.get_name).to eq('nuez')
		end
	end

	describe "#Existe_metodo_para_obtener_terreno_utilizado: " do
		it "Terreno utilizado: " do	
			expect(@carne_vaca.get_terreno_uso).to be(164.0)
			expect(@carne_cordero.get_terreno_uso).to be(185.0)
			expect(@camarones.get_terreno_uso).to be(2.0)
			expect(@chocolate.get_terreno_uso).to be(3.4)
			expect(@salmon.get_terreno_uso).to be(3.7)
			expect(@cerdo.get_terreno_uso).to be(11.0)
			expect(@pollo.get_terreno_uso).to be(7.1)
			expect(@queso.get_terreno_uso).to be(41.0)
			expect(@cerveza.get_terreno_uso).to be(0.22)
			expect(@leche_vaca.get_terreno_uso).to be(8.9)
			expect(@huevos.get_terreno_uso).to be(5.7)
			expect(@cafe.get_terreno_uso).to be(0.3)
			expect(@tofu.get_terreno_uso).to be(2.2)
			expect(@lentejas.get_terreno_uso).to be(3.4)
			expect(@nuez.get_terreno_uso).to be(7.9)
		end
	end

	describe "#Existe_metodo_para_obtener_gases: " do
		it "Gases: " do	
			expect(@carne_vaca.get_gases).to be(50.0)
			expect(@carne_cordero.get_gases).to be(20.0)
			expect(@camarones.get_gases).to be(18.0)
			expect(@chocolate.get_gases).to be(2.3)
			expect(@salmon.get_gases).to be(6.0)
			expect(@cerdo.get_gases).to be(7.6)
			expect(@pollo.get_gases).to be(5.7)
			expect(@queso.get_gases).to be(11.0)
			expect(@cerveza.get_gases).to be(0.24)
			expect(@leche_vaca.get_gases).to be(3.2)
			expect(@huevos.get_gases).to be(4.2)
			expect(@cafe.get_gases).to be(0.4)
			expect(@tofu.get_gases).to be(2.0)
			expect(@lentejas.get_gases).to be(0.4)
			expect(@nuez.get_gases).to be(0.3)
		end
	end

	describe "#Alimento_energia: " do
		it "Energia: " do	
			expect(@carne_vaca.get_kcal).to be >=(112.3)
			expect(@carne_cordero.get_kcal).to be(225.0)
			expect(@camarones.get_kcal).to be >=(81.8)
			expect(@chocolate.get_kcal).to be(479.2)
			expect(@salmon.get_kcal).to be(202.0)
			expect(@cerdo.get_kcal).to be(142.7)
			expect(@pollo.get_kcal).to be(132.8)
			expect(@queso.get_kcal).to be(402.2)
			expect(@cerveza.get_kcal).to be(16.4)
			expect(@leche_vaca.get_kcal).to be(61.2)
			expect(@huevos.get_kcal).to be(155.4)
			expect(@cafe.get_kcal).to be(0.4)
			expect(@tofu.get_kcal).to be(82.8)
			expect(@lentejas.get_kcal).to be(314.6)
			expect(@nuez.get_kcal).to be(650.0)
		end
	end

	describe "#Alimento_formateo: " do
		it "Formateo: " do	
			expect(@carne_vaca.to_s).to eq('carne de vaca, 21.1, 0.0, 3.1, 50.0, 164.0')
			expect(@carne_cordero.to_s).to eq('carne de cordero, 18.0, 0.0, 17.0, 20.0, 185.0')
			expect(@camarones.to_s).to eq('camarones, 17.6, 1.5, 0.6, 18.0, 2.0')
			expect(@chocolate.to_s).to eq('chocolate, 5.3, 47.0, 30.0, 2.3, 3.4')
			expect(@salmon.to_s).to eq('salmon, 19.9, 0.0, 13.6, 6.0, 3.7')
			expect(@cerdo.to_s).to eq('cerdo, 21.5, 0.0, 6.3, 7.6, 11.0')
			expect(@pollo.to_s).to eq('pollo, 20.6, 0.0, 5.6, 5.7, 7.1')
			expect(@queso.to_s).to eq('queso, 25.0, 1.3, 33.0, 11.0, 41.0')
			expect(@cerveza.to_s).to eq('cerveza, 0.5, 3.6, 0.0, 0.24, 0.22')
			expect(@leche_vaca.to_s).to eq('leche de vaca, 3.3, 4.8, 3.2, 3.2, 8.9')
			expect(@huevos.to_s).to eq('huevos, 13.0, 1.1, 11.0, 4.2, 5.7')
			expect(@cafe.to_s).to eq('cafe, 0.1, 0.0, 0.0, 0.4, 0.3')
			expect(@tofu.to_s).to eq('tofu, 8.0, 1.9, 4.8, 2.0, 2.2')
			expect(@lentejas.to_s).to eq('lentejas, 23.5, 52.0, 1.4, 0.4, 3.4')
			expect(@nuez.to_s).to eq('nuez, 20.0, 21.0, 54.0, 0.3, 7.9')
		end
	end
end
