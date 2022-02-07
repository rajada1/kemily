import 'dart:html';
import 'dart:io';

main() {
  bool condicao = true;

  while (condicao) {
    print('==escreva um texto ==');
    String text = stdin.readLineSync();
    if (text == 'sair') {
      condicao = false;
      print('==programa finalizado==');
    } else {
      print('== voce digitou: $text');
    }
  }
}
