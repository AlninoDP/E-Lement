import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String text;
  final Color color;
  final String imagePath;
  final Function()? ontap;

  const MenuButton({
    Key? key,
    required this.text,
    required this.color,
    required this.imagePath,
    this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 15,
      color: Colors.transparent,
      child: InkWell(
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
        onTap: ontap,
        child: Ink(
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              SizedBox(
                height: 40,
                width: 60,
                child: Image.asset(
                  'assets/icons/$imagePath',
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Expanded(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
