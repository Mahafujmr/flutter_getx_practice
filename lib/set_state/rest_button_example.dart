import 'package:flutter/material.dart';
class RestButtonExample extends StatefulWidget {
  const RestButtonExample({super.key});

  @override
  State<RestButtonExample> createState() => _RestButtonExampleState();
}
int nirob =0;
String name = "Allah";
class _RestButtonExampleState extends State<RestButtonExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rest Button'),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text(' Nirob = $nirob ',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            IconButton(
              onPressed: () {
              setState(() {
                nirob=0;
              });
            },
                icon:Icon(Icons.restart_alt_rounded),
              style: IconButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                iconSize: 30,
              ),
            ),
            Text("$name"),
          ],

        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Text("+",style: TextStyle(color: Colors.white,fontSize: 30,),),
        onPressed: () {
          setState(() {
            nirob++;

          });
      },),
    );
  }
}
