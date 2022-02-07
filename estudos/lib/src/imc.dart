import 'dart:io';

//programa que calcula o imc

calculoImc() {
  print('== digite seu peso');
  String textPeso = stdin.readLineSync();
  int peso = int.parse(textPeso);

  print('== digite sua altura==');
  String textAltura = stdin.readLineSync();
  double altura = double.parse(textAltura);

  double imc = calcImcExpr(peso, altura);
  imprimirResultado(imc);
}

//funcao que recebe o peso e a altura e retorna o imc
double calcImcExpr(int peso, double altura) {
  return peso / (altura * altura);
}

//imprimi o resultado baseado no imc passado por parametro
imprimirResultado(double imc) {
  print('========');

  if (imc < 18.5) {
    print('abaixo do peso');
  } else if (imc > 18.5 && imc < 24.9) {
    print(' peso normal');
  } else if (imc > 24.9 && imc < 29.9) {
    print('sobrepeso');
  } else if (imc > 29.9 && imc < 34.9) {
    print(' obesidade gral 1 ');
  } else if (imc > 34.9 && imc < 39.9) {
    print('obesidade gral 2');
  } else {
    print('obesidade gral 3');
  }
}
