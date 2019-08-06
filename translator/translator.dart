void main() {
  final myTranslator = const Translator('rojo');
  final mySecondTranslator = const Translator('asdfas');

  print(myTranslator == mySecondTranslator);
}

class Translator {
  final String redInSpanish;
  const Translator(this.redInSpanish);
}