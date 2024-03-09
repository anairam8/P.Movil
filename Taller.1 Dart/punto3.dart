//Taller #1 Dart

/*3. Escribir un programa que defina una función que reciba una cadena de texto y
devuelva verdadero si es un palíndromo o falso si no lo es. Un palíndromo es una
palabra o frase que se lee igual al derecho y al revés. Por ejemplo, “ana” o “anita lava
la tina” son palíndromos.
*/

bool esPalindroma(String palabra){
   String palabraInvertida = palabra.split('').reversed.join('');

if (palabra == palabraInvertida) {
    print("La palabra ingresada:$palabra es palíndroma");
    return true;
  } else {
    print("La palabra ingresada:$palabra no es palímdroma");
    return false;}
    
}


void main() {
 esPalindroma("lado");
}