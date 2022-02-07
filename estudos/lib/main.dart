import 'package:estudos/src/cadastro.dart';

import 'src/calculo_idade.dart';
import 'src/carrinho.dart';
import 'src/imc.dart';

main(List<String> arguments) {
  if (arguments[0] == ('calculo-idade')) {
    calculoIdade();
  } else if (arguments[0] == 'carrinho') {
    carrinho();
  } else if (arguments[0] == 'imc') {
    calculoImc();
  } else if (arguments[0] == 'cadastro') {
    cadastrarPesso()();
  } else {
    print('== esse programa nao existe==');
  }
}
