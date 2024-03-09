/*2. Escribir un programa que defina una función que utilice una lista de números enteros
y devuelva una colección con los números pares e impares separados, tanto los pares
cómo los impares deben estar ordenados de menor a mayor. Por ejemplo, si la lista de
entrada es [1, 50, 3, 4, 5, 90, 17], la lista de salida debe ser [[4, 50, 90], [1, 3, 5, 17]].
 */

Map<String, List<int>> ordenarLista(List<int> listaNumeros){
   Map<String, List<int>> listaOrdenada = {'listaPares': [],'listaInpares': []};
  for (int i = 0; i < listaNumeros.length; i++) {

    int numero = listaNumeros[i];

    if(numero % 2 == 0){
      listaOrdenada['listaPares']?.add(numero);
    }else{
      listaOrdenada['listaInpares']?.add(numero);
    }
  }
    listaOrdenada['listaPares']?.sort();
    listaOrdenada['listaInpares']?.sort();

    return listaOrdenada;
}
    


void main (){
  
  List<int> listaNumeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  Map<String, List<int>> resultado =ordenarLista(listaNumeros);
  print(resultado);

}

