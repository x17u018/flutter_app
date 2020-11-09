import 'package:flutter/material.dart';

void main() => runApp(RootWidget());

class RootWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListState();
  }
}

class ListState extends State<HomeWidget>{
  var ListItem = ["one","two","three"];

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title:Text('List Test'),),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index){
          return Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.black38),
              ),
            ),
            child: ListTile(
              leading: const Icon(Icons.flight_land),
              title: Text('$index'),
              subtitle: Text('うんこリスト'), // ブリブリ
              onTap: (){},
            ));},
        itemCount: ListItem.length,
          ),
      );
  }
}