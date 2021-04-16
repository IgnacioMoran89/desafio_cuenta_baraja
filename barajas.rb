require_relative 'carta1'

class Baraja
    attr_accessor :cartas

    def initialize(cartas = [])
        @cartas = cartas

        pintas = ['C', 'D', 'E', 'T']

        52.times do #52 cantidad de cartas en un mazo 
            self.cartas.push(Carta.new(rand(1..13), pintas.sample.upcase))  
        end 
        return cartas
    end

    def barajar
        self.cartas.shuffle
    end 

    def sacar
        self.cartas.pop(1)
    end 

    def repartir
        mano = []
        5.times do
            mano.push(self.cartas.pop)
        end 
        return mano
    end 

end 

juego = Baraja.new()

#print juego.barajar
#print juego.sacar
#print juego.repartir




#Crear la clase carta con los atributos numero y pinta 
#Agregar los getters y setters a ambos atributos
#Crear el constructor de la clase carta que le permita recibir un número del 1 al 13 y la pinta que está indicada por una sola letra. Puede ser Corazón: 'C', Diamante: 'D', Espada: 'E' o Trébol: 'T'
#Utilizar el ejercicio Carta creado en la primera parte y dejarlo en el archivo carta.rb
#Crear la clase baraja en el archivo barajas.rb con el atributo cartas, el cual será un arreglo.
#Al crear una baraja (constructor) se deben generar todas las combinaciones de números y pinta y guardarse dentro del arreglo cartas.
#Crear el método barajar que debe desordenar el arreglo de cartas Tip: Utilizar .shuffle
#Crear el método sacar que permita retirar la primera carta de la baraja Tip: Utilizar .pop
#Crear el método repartir mano que devolverá un arreglo con las primeras 5 cartas de la baraja.

