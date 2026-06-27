import 'package:flutter/material.dart';
class SetStateExample1 extends StatefulWidget {
  const SetStateExample1({super.key});

  @override
  State<SetStateExample1> createState() => _SetStateExample1State();
}

int count =0;
class _SetStateExample1State extends State<SetStateExample1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Set State Example'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text("$count",style: TextStyle(fontSize: 30),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        setState(() {
          count++;
        });
      },),
    );
  }
}
