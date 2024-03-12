/* 1. Escribir un programa que defina una clase Persona con los atributos nombre, edad y
género, y un método presentarse que imprima en la consola (haciendo uso de 1 solo
print) una breve descripción de la persona.
*/

 class Persona{
     String nombre;
     String apellido;
     int edad;
     String genero;


//Constructor
    Persona(this.nombre, this.apellido, this.edad, this.genero);

//Metodo de presentacion
    void presentarse(){
      print("Mi nombre es $nombre $apellido y tengo $edad años; mi genero es $genero");
    }
  }


void main (){

  var persona = new Persona ("Mariana", "henao bedoya", 20, "femenino (F)");
  persona.presentarse();
 
}