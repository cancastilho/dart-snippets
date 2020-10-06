import 'dart:async';

void main() {
  buscarTextoComFuture();
  buscarTextoComAsyncAwait();
}

void buscarTextoComFuture(){
  print("buscarTextoComFuture:");
  var deveFalhar = false;
  buscarTexto(deveFalhar)
      .then((texto) => print(texto))
      .catchError((erro) => print('Erro: $erro'))
      .whenComplete(() => print('Executa sempre.'));

  deveFalhar = true;
  buscarTexto(deveFalhar)
      .then((texto) => print(texto))
      .catchError((erro) => print('Erro: $erro'))
      .whenComplete(() => print('Executa sempre.'));

}
Future<String> buscarTexto(bool deveFalhar) {
  Future<String> promise = Future<String>.delayed(Duration(seconds: 3), () {
    if (deveFalhar) {
      throw ("Algum erro aleatório.");
    }
    return "Texto buscado";
  });
  return promise;
}

void buscarTextoComAsyncAwait() async{
  print('buscarTextoComAsyncAwait:');
  String texto = await buscarTexto(false);
  print('AsyncAwait '+ texto);
}

/**
 * Conclusões:
 * - Future funciona como a promise do Javascript.
 * - É possível usar interpolação de variáveis em string como em 'Erro: $erro'.
 * - Async Await é uma forma de escrever código asíncrono porém com legibilidade de código síncrono.
 * - Await deve vir antes de uma função ou método que retorna um Future.
 */