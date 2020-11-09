import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';

void main(){
  runApp(MyTodoApp());
}

class MyTodoApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'My Todo App',
      theme:ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:TodoListPage(),
    );
  }
}

class TodoListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('Row')),
          body: Container(
              alignment: Alignment.topLeft,
              child: Wrap(
                  children: [
                    myContainer(size: 120, label: '1'),
                    myContainer(size: 120, label: '2'),
                    myContainer(size: 120, label: '3'),
                    myContainer(size: 120, label: '4'),
                    myContainer(size: 120, label: '5'),
                  ]
              )
          )
      ),
    );
  }

  Container myContainer({double size = 50, String label = ' '}) {
    return Container(
      margin: const EdgeInsets.all(8),
      alignment: Alignment.center,
      width: size,
      height: size,
      color: Colors.green,
      child: Text(label),
    );
  }
}