class CuentaBancaria
    attr_accessor :nombre_usuario, :numero_cuenta, :tipo_cuenta
    def initialize(nombre_usuario, numero_cuenta, tipo_cuenta=0)
        # raise RangeError, 'Cuentas deben tener 8 dígitos' if numero_cuenta.digits.count != 8
        raise RangeError, 'Cuentas deben tener 8 dígitos' if numero_cuenta.chars.count != 8
        raise RangeError, 'Tipo de cuenta no válida. Cuentas VIP son 1 y las otras 0' if tipo_cuenta != 0 && tipo_cuenta != 1

        @nombre_usuario = nombre_usuario
        @numero_cuenta = numero_cuenta
        @tipo_cuenta = tipo_cuenta
    end
    def numero_de_cuenta
        "#{@tipo_cuenta}-#{@numero_cuenta}"
    end
end

# cuenta0 = CuentaBancaria.new('Pepe', '00112233')
cuenta01 = CuentaBancaria.new('Pepe', '00112233', 1)
# cuenta1 = CuentaBancaria.new('Pepe', '12345678', 1)
# cuenta2 = CuentaBancaria.new('Almendra', '123456', 0)
# cuenta3 = CuentaBancaria.new('Ada', '12345678', 3)
# print cuenta0.numero_de_cuenta
print cuenta01.numero_de_cuenta
# print cuenta1.numero_de_cuenta
# print cuenta2.numero_de_cuenta
# print cuenta3.numero_de_cuenta