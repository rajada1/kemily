import 'dart:io';

Map<String, dynamic> cadastro;
main() {
  print('==digite o seu nome==');
  String nome = stdin.readLineSync();
  cadastro['nome'] = nome;

  print('==digite sua idade');
}
