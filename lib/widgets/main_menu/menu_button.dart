import 'package:flutter/material.dart';
import 'package:kimiaapp/screens/logam_alkali_screen.dart';
import 'package:kimiaapp/widgets/main_menu/other_elemen.dart';
import 'package:get/get.dart';

class MenuButton extends StatelessWidget {
  final String text;
  final Color color;
  final String imagePath;

  const MenuButton({
    Key? key,
    required this.text,
    required this.color,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle the click event here
        print('Menu clicked!');
      },
      child: Material(
        elevation: 15,
        color: Colors.transparent,
        child: InkWell(
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
          onTap: () {
            //! Belom buat custom ontap
            // showPopup(context);
            Get.to(() => const LogamAlkaliScreen());
          },
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
      ),
    );
  }
}

void showPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return const OtherElemen();
    },
  );
}
