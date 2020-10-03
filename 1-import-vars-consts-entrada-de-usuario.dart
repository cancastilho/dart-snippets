import 'dart:convert';
import 'dart:io';

main() {
    print('1 + 1 = ?');
    var valorInserido = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
    valorInserido = valorInserido.trim();
    const valorCorreto = "2";
    final texto = valorInserido == valorCorreto ? 'Acertou!!' : 'Errou :(';
    print(texto);
}

/**
 * Conclusões:
 * - Use import para importar código.
 * - Tipo de retorno de main é void, mas pode ser omitido.
 * - Use var para declarar variável cujo tipo será inferido.
 * - Use const para declarar constantes literais.
 * - Use final para declarar constantes cujo valor será obtido dinamicamente.
 * - É possível usar o if ternário (condicao)? seVerdadeiro: seFalso;
 * - Literais de strings também podem ser declarados com "", além de ''.
 * - Use stdin.readLineSync() para ler entradas de usuário no terminal.
 * - Use .trim() para remover espaços antes e depois da string.
 * - Execute o código no terminal usando: dart codigo.dart
 * - Utilize F2 para refatorar/renomear variáveis no vscode.
 */