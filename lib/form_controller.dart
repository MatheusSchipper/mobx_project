import 'package:cpfcnpj/cpfcnpj.dart';
import 'package:mobx/mobx.dart';
import 'package:regexed_validator/regexed_validator.dart';

import 'models/client.dart';
part 'form_controller.g.dart';

class FormController = _FormControllerBase with _$FormController;

abstract class _FormControllerBase with Store {
  var client = Client();

  @computed
  bool get isValid{
    return validateName() == null && 
           validateEmail() == null && 
           validateCpf() == null;
  }

  String validateName(){
    if(client.name == null || client.name.isEmpty)
      return "Campo obrigatório";
    else if(client.name.length <=2)
      return "Nome deve ter mais de 2 caracteres";
    return null;
  }

  String validateEmail(){
    if(client.email == null || client.email.isEmpty)
      return "Campo obrigatório";
     else if(!validator.email(client.email))
       return "Email inválido";
    return null;
  }

  String validateCpf(){
    if(client.cpf == null || client.cpf.isEmpty)
      return "Campo obrigatório";
    else if(!CPF.isValid(client.cpf))
      return "CPF inválido";
    return null;
  }
  
}