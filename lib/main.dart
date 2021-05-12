import 'package:flutter/material.dart';

void main() => runApp(MyCardApp());

class MyCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Card Images',
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(title: Text('AppBar Targetas eve'), actions: <Widget>[
          //1
          IconButton(icon: Icon(Icons.add_a_photo), onPressed: () {}), //fin de IconButton
        ] //fin de widget[] 1
            ), //fin de appBar
        body: Container(
          child: ListView(children: <Widget>[
            //2
            _items('https://raw.githubusercontent.com/EvelynVc/mis_imagenes/main/image02.JPG', 'Evelyn Valles'), //fin de items 1
            SizedBox(
              height: 5.0,
            ), //fin de sizedBox 1

            _items('https://raw.githubusercontent.com/EvelynVc/mis_imagenes/main/ram.jpg', 'Memoria Ram'), //fin de items 2
            SizedBox(
              height: 5.0,
            ), //fin de sizedBox 2

            _items('https://raw.githubusercontent.com/eliseoflutter/FotoFamilia/main/image01.JPG', 'Teclado'), //fin de items 2
            SizedBox(
              height: 5.0,
            ), //fin de sizedBox 3

            _items('https://raw.githubusercontent.com/EvelynVc/mis_imagenes/main/laptop.jpg', 'Laptop'), //fin de items 2
            SizedBox(
              height: 5.0,
            ), //fin de sizedBox 4

            _items('https://raw.githubusercontent.com/EvelynVc/mis_imagenes/main/bocina.jpg', 'Bocina'), //fin de items 2
            SizedBox(
              height: 5.0,
            ), //fin de sizedBox 5

            _items('https://raw.githubusercontent.com/EvelynVc/mis_imagenes/main/camara.png', 'camara'), //fin de items 2
            SizedBox(
              height: 5.0,
            ), //fin de sizedBox 6
          ] //fin de widget[] 2
              ), //fin de ListView
        ), //fin de container
      ), //fin de Scaffold
    ); //fin de materialApp
  } //fim de widget build

  Widget _items(String url, String producto) {
    return Container(
      padding: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
      child: Card(
        color: Colors.blueGrey[200],
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 1.0),
                padding: EdgeInsets.only(left: 0.5),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0.2),
                  leading: CircleAvatar(
                    backgroundColor: Colors.cyanAccent,
                    backgroundImage: NetworkImage(url),
                    maxRadius: 35.0,
                  ),
                  title: Text(producto, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0)),
                  subtitle: Text('Teclado en buen estado gamer', style: TextStyle(fontSize: 9.0)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  } //fin de Widget_items
} //fin de MyCardApp
