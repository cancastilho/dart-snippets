import 'dart:core';
import 'dart:async';

void main() async{
  print('Iniciando teste');
  Future<List<String>> futureRede =  buscarDadosNaRede();
  Future<List<String>> futureBanco =  buscarDadosNoBancoDeDados();

  List<Future<List<String>>> futures = [
    futureRede,
    futureBanco
  ];

  List<List<String>> respostas =  await Future.wait(futures);
  assert(respostas.length == 2);
  
  List<String> dadosDaRede = respostas[0];
  assert(respostas.length == 4);
  assert(dadosDaRede.contains("Carlos"));

  List<String> dadosDoBanco = respostas[1];
  assert(respostas.length == 3);
  assert(dadosDoBanco.contains("Rita"));
  print("Ok");
}

Future<List<String>> buscarDadosNaRede() async{
  print('Buscando dados da rede...');
  await Future.delayed(Duration(seconds: 4));
  return [
    "Carlos",
    "Laura",
    "Clara",
    "Sofia"
  ];
}

Future<List<String>> buscarDadosNoBancoDeDados() async{
  print('Buscando dados do banco...');
  await Future.delayed(Duration(seconds: 2));
  return [
    "Rita",
    "Thiago",
    "Victor"
  ];
}

/**
 * Conclusões:
 * - Use await Future.delayed() para fazer programa 'dormir'.
 * - Use Future.wait([future1, future2, ...]) para aguardar todos os 
 *   futures serem resolvidos em paralelo para então passar para 
 *   próxima linha de execução.
 * 
 * */