import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async{
  final url = 'https://hacker-news.firebaseio.com/v0/item/121003.json?print=pretty';
  final resp = await http.get(url);
  final jsonObj = json.decode(resp.body);
  print(jsonObj['text']);
}

/**
 * Conclusões:
 * - Instale o pacote http/http.dart com pub antes de importá-lo.
 * - Import usando as http para que os métodos do pacote não fiquem no escopo global.
 * - http.get é assíncrono, utilize await para indicar que o código abaixo deve aguardar retorno do get.
 * - Use async na assinatura do método para usar await dentro dele.
 * - Inclua import 'dart:convert' para poder usar funções do json.
 * - Use json.decode para transformar a string de retorno em objeto json.
 * - Acesse as chaves do objeto json com json['chave']
 */


