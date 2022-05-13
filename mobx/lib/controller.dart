import 'package:mobx/mobx.dart';

class Controller {
  var counter = Observable(0);
  // ação
  late Action increment;

  // construtor
  Controller() {
    increment = Action(_increment);
  }

  // função
  _increment() {
    counter.value = counter.value + 1;
  }
}
