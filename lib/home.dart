import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_project/controller.dart';

class MyHomePage extends StatelessWidget {
  
   final controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MobX"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: "Nome"),
                onChanged: controller.mudarNome,
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(labelText: "Sobrenome"),
                onChanged: controller.mudarSobrenome,
              ),
              SizedBox(height: 20,),
              Observer(builder: (_) {
                return Text(controller.nomeCompleto);
              },),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () 
        {
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}