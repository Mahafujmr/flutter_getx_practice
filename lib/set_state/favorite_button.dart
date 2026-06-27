import 'package:flutter/material.dart';
class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}
bool isFavorite = false;

class _FavoriteButtonState extends State<FavoriteButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Button'),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            IconButton(
                onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: Colors.red,
                  size:  50,
                ),
            ),
            Text(
                isFavorite ? "Add Favorite" : "No Favorite",
              style: const TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
