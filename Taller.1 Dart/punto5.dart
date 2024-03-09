/*5. Define una clase en Dart llamada "Producto" con atributos como nombre, precio y
cantidad en inventario. Crea objetos de esta clase, realiza operaciones como la
compra, venta y mostrar los detalles actualizados de los productos. Es necesario
validar el inventario de los productos. Es necesario hacer uso de los getter y setter
para acceder a dicha información y modificarla.
 */

class Producto{
  late String _nombreProducto;
  late double _precio;
  late int _cantidadInventario;  

//Constructor
Producto(String nombreProducto, double precio, int cantidadInventario) {
    _nombreProducto = nombreProducto;
    _precio = precio;
    _cantidadInventario = cantidadInventario;
}

//Getters
  String get nombreProducto => _nombreProducto;
  double get precio => _precio;
  int get cantidadInventario => _cantidadInventario;

// Setters
  set nombreProducto(String value) {
    _nombreProducto = value;
  }

  set precio(double value) {
    _precio = value;
  }

  set cantidadInventario(int value) {
    _cantidadInventario = value;
  }

//Metodos
//Metodo para mostrar los detalles del producto actulizados.
void mostrarDetallesProducto(){
  print("----------Detalles del producto----------");
  print("Nombre del producto: $_nombreProducto");
  print("Precio:\$$_precio");
  print("Cantidad de inventario disponible: $cantidadInventario");
}

//Metodo para comprar un producto.
void comprarProducto(int cantidad){
  if(cantidad > 0){
    _cantidadInventario = cantidadInventario + cantidad;
    print("Compra realizada.👍");
  }else{
    print("La cantidad a comprar debe de ser mayor a 0, para poder realizar la compra.");
  }
}

//Metodo para vender un producto.
void venderProducto(int cantidad){
  if(cantidad <= cantidadInventario){
    _cantidadInventario = cantidadInventario - cantidad;
    print("Venta exitosa.👍");
  }else{
    print("No disponemos del inventario suficiente para su compra");
  }
}
}

void main(){

  Producto producto1 = new Producto('Arroz', 4.000, 20);
  Producto producto2 = new Producto('leche', 3.500, 40);
  Producto producto3 = new Producto('jabon', 2.600, 30);

//Comprar productos:
producto1.comprarProducto(2);
producto2.comprarProducto(4);
producto3.comprarProducto(5);

//Vender productos:
producto1.venderProducto(10);
producto2.venderProducto(6);
producto3.venderProducto(2);

//Mostrar los detalles de los productos:
producto1.mostrarDetallesProducto();
producto2.mostrarDetallesProducto();
producto3.mostrarDetallesProducto();
}