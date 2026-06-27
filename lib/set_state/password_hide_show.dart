import 'package:flutter/material.dart';
class PasswordHideShow extends StatefulWidget {
  const PasswordHideShow({super.key});

  @override
  State<PasswordHideShow> createState() => _PasswordHideShowState();
}

class _PasswordHideShowState extends State<PasswordHideShow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Password hide or show'),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                maxLength: 7,
                decoration: InputDecoration(
                  icon: Icon(Icons.favorite),
                  labelText: 'Show/Hide',
                  //fillColor: Colors.greenAccent,
                  hintText: 'Password',
                 // filled: true,

                  enabledBorder: OutlineInputBorder(
                    gapPadding:7,
                    borderSide: BorderSide(
                      color: Colors.orange,
                      width: 3,

                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 10,
                    )
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 2.0,
                    ),
                  ),
                ),

              ),
            ),

          ],
        ),
      ),
    );
  }
}
