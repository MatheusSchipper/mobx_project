import 'package:mobx/mobx.dart';
part 'controller.g.dart';

//Geração de código: $ flutter pub run build_runner build

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store{
  
  @observable
  int counter = 0;

  @action
  increment(){
    counter++;
  }

}