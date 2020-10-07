import 'dart:convert';

void main(){
  String codigoDoUsuario = "123123";
  var json = buscarProtocolosDoUsuario(codigoDoUsuario);

  assert( json['protocolos'] != null);
  assert( json['protocolos'] is List);
  assert( json['protocolos'][0] != null);
  
  var umProtocolo = json['protocolos'][0];
  assert( umProtocolo['codigo'] != null);
  assert( umProtocolo['quandoCriou'] != null);
  assert( umProtocolo['estado'] != null);
}


Map<String, dynamic> buscarProtocolosDoUsuario(String codigoDoUsuario){
  Map<String, dynamic> json = jsonDecode(PROTOCOLOS_JSON_STR);
  return json;
}
  

const PROTOCOLOS_JSON_STR = '''
{
  "protocolos":[
    {"codigo":"1111111","quandoCriou":"12-03-2020 13:45:40", "estado":"Em andamento"},
    {"codigo":"2222222","quandoCriou":"12-03-2020 13:45:40", "estado":"Em andamento"},
    {"codigo":"3333333","quandoCriou":"12-03-2020 13:45:40", "estado":"Fechado"}
  ]
}
''';


/**
 * Conclusões:
 * 
 * - É possível fazer string multilinha no dart com '''.
 * - É possível representar JSON com string multilinha.
 * - Tipo do json após jsonDecode é Map<String, dynamic>.
 * - Utilize objeto is [tipo] para saber se um objeto é do tipo especificado.
 * - É possível fazer mocks de respostas JSON usando arquivo dart com constantes JSON.
 * - Após jsonDecode(str) acesse os campos usando a notação json['chave'].
 * - Utilize assert para certificar que uma determinada condição seja verdadeira.
 */



