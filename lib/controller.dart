import 'package:mobx/mobx.dart';

class Controller {
  //entidade observável
  var _counter = Observable(0);
  int get counter => _counter.value;
  set counter(int newValue) => _counter.value = newValue;

  Action increment;

  Controller()
  {
    increment = Action(_increment);
  }
  //Action
  _increment()
  {
    counter++;
  }
}