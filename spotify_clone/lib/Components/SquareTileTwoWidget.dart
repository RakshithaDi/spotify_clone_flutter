import 'package:flutter/material.dart';
import 'package:spotify_clone/Utils/styles.dart';

class SquareTileTwoWidget extends StatelessWidget {
  late String imageUrl;
  late String title;
  SquareTileTwoWidget({required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Card(
        color: kNavbarColor,
        child: InkWell(
          onTap: () {},
          child: Column(
            children: [
              Container(
                height: 170,
                width: 160,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(fit: BoxFit.fill, imageUrl)),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
