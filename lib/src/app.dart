import 'package:flutter/material.dart';
import 'package:flutter_basic/src/pages/count_page.dart';

class MyApp extends StatelessWidget {
  @override
  // build ()metodo para redibujar un widget
  //BuildContext La clase no es más que una referencia a la ubicación de un Widget dentro de la estructura de árbol de todos los Widgets que se crea,contiene la informacion del arbol de Widget
  Widget build(BuildContext context) {
    //MaterialApp permite la confguracion global de la aplicacion
    return MaterialApp(

        //quitar banner de que dice debug
        debugShowCheckedModeBanner: false,
        //para centrar el widget
        home: Center(
//            child:HomePage()
          child: CountPage(),
        ));
  }
}
