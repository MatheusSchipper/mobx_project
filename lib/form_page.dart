import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_project/form_controller.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final formController = FormController();

  _textField({String labelText, onChanged, String Function() errorText}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        errorText: errorText == null ? null : errorText(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulário"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Observer(builder: (_) {
              return _textField(
                  labelText: "Nome",
                  onChanged: formController.client.changeName,
                  errorText: formController.validateName);
            }),
            SizedBox(
              height: 20,
            ),
            Observer(builder: (_) {
              return _textField(
                  labelText: "Email",
                  onChanged: formController.client.changeEmail,
                  errorText: formController.validateEmail);
            }),
            SizedBox(
              height: 20,
            ),
            Observer(builder: (_) {
              return _textField(
                  labelText: "CPF",
                  onChanged: formController.client.changeCpf,
                  errorText: formController.validateCpf);
            }),
            SizedBox(
              height: 50,
            ),
            Observer(builder: (_) {
              return RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: formController.isValid ? (){
                } : null,
                child: Text("Salvar"),
              );
            }),
          ],
        ),
      ),
    );
  }
}
