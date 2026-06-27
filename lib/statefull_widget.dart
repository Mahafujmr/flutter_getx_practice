import 'package:flutter/material.dart';
class StatefullWidget extends StatefulWidget {
  const StatefullWidget({super.key});

  @override
  State<StatefullWidget> createState() => _StatefullWidgetState();
}

class _StatefullWidgetState extends State<StatefullWidget> {
  @override
  int number =0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('State Full Widget'),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            minimumSize: Size(100,80)
          ),
            onPressed: () {
          setState(() {
            number++;
          });
        }, 
            child: Text("$number",style: TextStyle(color: Colors.orange),)
        ),
      ),
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.red,

          onPressed:() {
            setState(() {
              print('Your name');
            });
          },
      ),
    );
  }
}
