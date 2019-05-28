import 'package:flutter/material.dart';

class CountPage extends StatefulWidget {
  @override
  _CountPageState createState() {
    return _CountPageState();
  }
}

class _CountPageState extends State<CountPage> {
  //clase para el estado del StatefulWidget esta clase es solo usada aca, no podra ser usada desde afuera por eso el _

  final _textStyle = TextStyle(fontSize: 26);

  int _count = 0;

  @override
  Widget build(BuildContext context) {
    //contruccion de Scaffold con appBar
    return Scaffold(
        //centro mi FloatingActionButton
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked
        appBar: AppBar(
          title: Text('Flutter Básico'),
          centerTitle: true,
          elevation: 1.2,

          //se agregaran columnas al widget
        ),
        body: Center(
          child: Column(
            //centrar la columna
            mainAxisAlignment: MainAxisAlignment.center,

            //array que me permite tener varios child de texto
            children: <Widget>[
              /*Text('Numeros de click',style: TextStyle(fontSize: 26)),
        Text('0',style: TextStyle(fontSize: 26))*/
              Text('Numeros de click', style: _textStyle),
              //trasformo el count a un String con la interpolacion
              Text('$_count', style: _textStyle)
            ],
          ),
        ),
        floatingActionButton: _createBtn());
  }

  Widget _createBtn() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 22.0,
        ),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _reset),
        // Expanded srive para expandirse lo mas posible en la pantalla
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _remove),
        //SizedBox similar a un div
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          //agregar un icono de + al FloatingActionButton
          child: Icon(Icons.add),
          //se pasa una referencia a la funcion
          onPressed: _add,
        )
      ],
    );
  }

  void _add() {
    //metodo para redibujar el Widget, setState solo existe dentro de los StatefulWidget
    setState(() {
      _count++;
    });
  }

  void _remove() {
    setState(() => _count--);
  }

  void _reset() {
    setState(() => _count = 0);
  }
}
