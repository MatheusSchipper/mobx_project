import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_project/body.dart';
import 'package:mobx_project/form_controller.dart';
// import 'package:provider/provider.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    //final formController = Provider.of<FormController>(context);
    final formController = GetIt.I.get<FormController>();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            formController.client.changeCpf("");
            formController.client.changeEmail("");
            formController.client.changeName("");
            Navigator.pop(context);
          },
        ),
        title: Observer(
          builder: (_) {
            return Text(formController.isValid
                ? "Formulário validado"
                : "Formulário não validado");
          },
        ),
      ),
      body: BodyWidget(),
    );
  }
}
