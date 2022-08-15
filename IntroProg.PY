Historial2 = (23500, 5960, 2300, 10200, 8900);
def sumar (valores):
    """
    Suma el conjunto o grupo de valores de una lista o tupla:
    Parameters:
    valores: Tupla con los valores a sumar.
    Returns:
    Suma de los valores en la tupla.
    """
    if isinstance(valores, (tuple)):
        acumulador = 0
        for v in valores:
            acumulador += v
        return acumulador

try:
    resultado = sumar (Historial2)
    print('El resultado de sumar los montos {} de la mascota Frida, es igual a {}' .format(Historial2, resultado))
except ValueError as e:
    print('Error:', e)


monto_sup = 5000 
def mayor_5000(Historial2, monto_tope):
    return [i for i in Historial2 if i> monto_sup];
Montos_superiores = len(mayor_5000(Historial2 , monto_sup));

print ("De todos los gastos, {} fueron superiores a {}" .format(Montos_superiores, monto_sup) )