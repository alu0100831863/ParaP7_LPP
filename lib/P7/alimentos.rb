class Alimentos
	attr_accessor :nombre, :proteinas, :carbohidratos, :lipidos, :gei, :terreno
	def initialize(nombre, proteinas, carbohidratos, lipidos, gei, terreno)
		@nombre=nombre
		@proteinas=proteinas
		@carbohidratos=carbohidratos
		@lipidos=lipidos
		@gei=gei
		@terreno=terreno
	end

	def get_name
		@nombre
	end

	def get_proteinas
		@proteinas
	end

	def get_carbohidratos
		@carbohidratos
	end

	def get_lipidos
		@lipidos
	end

	def get_gases
		@gei
	end
	
	def get_terreno_uso
		@terreno
	end

	def get_kcal
		@kcal=0.0
		@kcal=((@proteinas*4)+(@carbohidratos*4)+(@lipidos*9))
	end

	def to_s
		"#{@nombre}, #{@proteinas}, #{@carbohidratos}, #{@lipidos}, #{@gei}, #{@terreno}"
	end
end
