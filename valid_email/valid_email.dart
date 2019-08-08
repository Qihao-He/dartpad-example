import 'dart:html';

void main() {
  final InputElement input = querySelector('input');
  final DivElement div = querySelector('div');

  input.onInput.listen((dynamic event) => print(event.target.value));
}
