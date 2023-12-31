import 'package:flutter/material.dart';
import 'package:spotify_clone/Utils/styles.dart';

class SquareTileWidget extends StatelessWidget {
  late String imageUrl;
  late String title;
  SquareTileWidget({required this.imageUrl, required this.title});
  bool isFocused = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Card(
          color: kNavbarColor,
          child: InkWell(
            onTap: () {},
            child: Column(
              children: [
                Container(
                  height: 130,
                  width: 130,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(fit: BoxFit.fill, imageUrl),
                  ),
                ),
                const SizedBox(
                  height: 0,
                ),
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
