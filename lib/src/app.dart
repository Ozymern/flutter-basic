import 'package:flutter/material.dart';
import 'package:flutter_basic/src/pages/count_page.dart';

class MyApp extends StatelessWidget {
  // build contiene la informacion del arbol de Widget
  @override
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
