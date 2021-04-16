class Carta
    attr_reader :numero, :pinta
    def initialize(numero, pinta)

        pinta.upcase!
        pintas = ['C', 'D', 'E', 'T']

        if (numero >= 1 && numero <= 13) && pintas.include?(pinta)
            @numero = numero
            @pinta = pinta
        else 
            raise ArgumentError.new('No es un argumento válido')
        end 
    end 
end 


#Probar la clase creando un arreglo con 5 cartas.

# 1. en IRB require_relative 'carta1'

#2. crear array en IRB
#array = []

#3. en IRB declarar pintas = ['C', 'D', 'E', 'T']

#4. iterar 5 veces aleatoriamente
    #5.times do
        #array.push(Carta.new(rand(1..13), pintas.sample))
    #end 

# 5. llamar al array y comprobar




