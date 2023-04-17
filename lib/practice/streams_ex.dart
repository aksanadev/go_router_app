import 'dart:async';

void main() {}

class NumberGenerator {
  int _counter = 0;

  StreamController<int> _controller = StreamController<int>.broadcast();

  Stream<int> get getStream => _controller.stream;

  NumberGenerator() {
    final timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _controller.sink.add(_counter);
      _counter++;
    });
  }
}
