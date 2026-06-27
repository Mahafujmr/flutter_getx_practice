import 'package:flutter/material.dart';
class MinusButton extends StatefulWidget {
  const MinusButton({super.key});

  @override
  State<MinusButton> createState() => _MinusButtonState();
}
int number =0;
class _MinusButtonState extends State<MinusButton> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Minus Button'),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: .center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              onPressed: () {
                setState(() {
                  number++;
                });
            },
              child: Text("+",style: TextStyle(
                  color: Colors.white,
                  fontSize: 30),),
              ),
            SizedBox(width: 10,),
            Text('$number',style: TextStyle(fontSize: 30),),
            SizedBox(width: 10,),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.brown,
              ),
              onPressed: () {
                setState(() {
                  number--;
                });
              },
              child: Text("-",style: TextStyle(
                  color: Colors.white,
                  fontSize: 30),)
              ,),
          ],
        ),
      ),
    );
  }
}
