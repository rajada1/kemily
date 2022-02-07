import 'dart:io';

List<String> produtos = [];
carrinho() {
  bool condicao = true;
  while (condicao) {
    print('==adicione um produto==');
    String text = stdin.readLineSync();
    if (text == 'sair') {
      print('==terminou o programa==');
      condicao = false;
    } else if (text == 'imprimir') {
      imprimir(produtos);
    } else if (text == 'remover') {
      remover(produtos);
    } else {
      produtos.add(text);
      print('\x1B[2J\x1B[0;0h');
    }
  }
}

imprimir(produtos) {
  for (var i = 0; i < produtos.length; i++) {
    print('ITEM $i - ${produtos[i]}');
  }
}

remover(produtos) {
  print('== qual item deseja remover?==');
  imprimir(produtos);

  int item = int.parse(stdin.readLineSync());
  produtos.removeAt(item);
  print('==item removido==');
}
