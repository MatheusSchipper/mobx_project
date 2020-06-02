import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_project/body.dart';
import 'package:mobx_project/form_controller.dart';
import 'package:provider/provider.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    final formController = Provider.of<FormController>(context);

    return Scaffold(
      appBar: AppBar(
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
