import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_project/form_controller.dart';
import 'package:mobx_project/home.dart';
// import 'package:provider/provider.dart';

void main() {
  GetIt getIt = GetIt.I;
  //Instancia o FormController desde já
  getIt.registerSingleton<FormController>(FormController());
  //Instancia o FormController apenas após sua primeira chamada.
  //getIt.registerLazySingleton<FormController>(() => FormController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return MultiProvider(
    //     providers: [
    //       Provider<FormController>(
    //         create: (_) => FormController(),
    //       )
    //     ],
    //     child: MaterialApp(
    //       title: 'Flutter Demo',
    //       theme: ThemeData(
    //         primarySwatch: Colors.blue,
    //         visualDensity: VisualDensity.adaptivePlatformDensity,
    //       ),
    //       home: MyHomePage(),
    //     ));
    return  MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: MyHomePage(),
        );
  }
}
