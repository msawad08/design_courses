import 'dart:async';

class Debounce {
  final Duration delay;
  final dynamic callBack;
  Timer? _timer;
  dynamic arg;

  Debounce(this.delay, this.callBack);

  call(arg) {

    _timer ??= Timer(delay, _action);
    this.arg = arg;
  }

  _action(){
    print("action called");
    _timer?.cancel();
    _timer = null;
    callBack(arg);

  }

  dispose() {
    _timer?.cancel();
    _timer = null;
  }
}