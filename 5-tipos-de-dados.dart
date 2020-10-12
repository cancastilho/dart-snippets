void main(){
  bool trueOuFalse = true;
  int inteiro =1;
  double numeroDecimal = 2.0;
  String nome = "Carlos Nantes";
  var variavelComTipo = "String";
  //var variavelComTipo = 2; não é possível, pois tipo definido é string

  dynamic qualquerObjeto = 2;
  qualquerObjeto = "String";

  Set conjunto = {1,2,2,3};
  assert(conjunto.length == 3);
  
  List lista = [1,2,2,3];
  assert(lista.length == 4);

  Map mapa = {
    "chave": "valor",
    "nome": "Carlos Nantes"
  };
  assert(mapa["chave"] == "valor");
  assert(mapa["nome"]  == "Carlos Nantes");

  print("Ok");
}

/**
 * Conclusões:
 * - Dart é fortemente tipado. Variável definida como String não aceita atribuição de outro tipo.
 * - dynamic é equivalente ao Object do Java. Aceita qualquer tipo de variável. Evite utilizá-lo se já souber o tipo da variável.
 * - int, double, bool, Set, List, String, Map são tipos do dart.
 * - var permite declarar variável sem explicitar o tipo, 
 *   porém após atribuir o primeiro valor a ela, ela terá o tipo do valor atribuído e não poderá receber valores de outro tipo.
 */