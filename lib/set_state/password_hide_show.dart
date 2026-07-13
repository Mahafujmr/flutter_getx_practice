import 'package:flutter/material.dart';
class PasswordHideShow extends StatefulWidget {
  const PasswordHideShow({super.key});

  @override
  State<PasswordHideShow> createState() => _PasswordHideShowState();
}
bool isPassword =  true;

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
              padding: const EdgeInsets.only(right: 20,left: 20,top: 60),
              child: TextField(
                obscureText: isPassword,
                maxLength: 7,
                decoration: InputDecoration(
                  labelText: 'Show/Hide',
                  //fillColor: Colors.greenAccent,
                  hintText: 'Password',
                 // filled: true,
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isPassword = !isPassword ;
                        });
                  }, icon: Icon(
                   isPassword  ? Icons.visibility : Icons.visibility_off
                  )
                  ),

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
                      width:4,
                    ),
                    borderRadius: BorderRadius.circular(40),
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
