import 'package:flutter/material.dart';

class ElemenMenu extends StatelessWidget {
  final String text;
  final Color color;
  final String imagePath;
  const ElemenMenu(
      {super.key,
      required this.text,
      required this.color,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/$imagePath',
            ),
            const SizedBox(
              height: 4,
            ),
            Expanded(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ));
  }
}
