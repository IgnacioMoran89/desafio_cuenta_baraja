class CuentaBancaria
    attr_accessor :saldo
    attr_reader :banco, :numero_cuenta 

    def initialize(banco, numero_cuenta, saldo = 0)
        @banco = banco
        @numero_cuenta = numero_cuenta
        @saldo = saldo
    end 

    def transferir(monto, otra_cuenta)
        self.saldo -= monto
        otra_cuenta.saldo += monto
    end 
end 

class Usuario 

    attr_accessor :nombre_usuario, :cuenta

    def initialize(nombre_usuario, cuenta = [])
        @nombre_usuario = nombre_usuario
        @cuenta = cuenta
        
    end 

    def saldo_total
        sum_total = 0
        self.cuenta.each do |i|
            sum_total += i.saldo
        end 
        return sum_total
    end 


end 

cuenta1 = CuentaBancaria.new('Banco Estado', '245003', 5000)
cuenta2 = CuentaBancaria.new('Banco Chile', '222222', 5000)

cuenta1.transferir(5000, cuenta2)


cuenta_usuario = Usuario.new('Ignacio', [cuenta1, cuenta2])

#puts cuenta1.saldo
#puts cuenta2.saldo
#puts cuenta_usuario.saldo_total





#1. Crear las clases Usuario y CuentaBancaria 
#2. Crear el constructor de la clase CuentaBancaria que reciba el nombre del banco, el número de cuenta y el saldo (el saldo por defecto será cero).
#3. Crear el método transferir en la clase Cuenta que reciba un monto y otra cuenta. Este método restará del saldo actual el monto y aumentará el saldo de la otra cuenta en el mismo monto 
#Tip: es necesario que exista el attr_writer o attr_accessor del saldo para acceder al saldo de la otra cuenta
#4. Probar creando dos cuentas cada una con un saldo de 5000 y transferir el total de una cuenta a la otra.
#5. Crear el constructor de Usuario que reciba el nombre del usuario y un arreglo con al menos 1 cuenta bancaria.
#6. Crear el método saldo total que devuelva la suma de todos los saldos del usuario.
