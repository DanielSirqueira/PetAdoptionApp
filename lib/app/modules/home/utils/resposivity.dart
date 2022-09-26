import 'package:flutter/cupertino.dart';

class Resposivity {
  static double _calcWidth(double tamanho, MediaQueryData data) {
    final size = data.size;

    //inserir o tamanho da LARGURA do mockup;
    var coeficiente = tamanho / 375;

    return size.width * coeficiente;
  }

  static double _calcHeight(double tamanho, MediaQueryData data) {
    final size = data.size;

    //inserir o tamanho da ALTURA do mockup;
    var coeficiente = tamanho / 667;

    return size.height * coeficiente;
  }

  static double automatic(double tamanho, MediaQueryData data) {
    final width = data.size.width;
    final height = data.size.height;

    return width > height
        ? _calcHeight(tamanho, data)
        : _calcWidth(tamanho, data);
  }
}
