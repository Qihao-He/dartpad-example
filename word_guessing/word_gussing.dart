import 'dart:html';

void main() {
  final ButtonElement button = querySelector('button');
  final InputElement input = querySelector('input');
  final String secretWord = 'banana';

  button.onClick.take(4).where((event) => input.value == secretWord).listen(
        (event) => print('You got it!'),
        onDone: () => print('Nope, bad guesses.'),
      );
}
