import 'package:flutter/material.dart';
import 'package:kimiaapp/models/colors.dart';

import 'menu_button.dart';

class OtherElemen extends StatelessWidget {
  const OtherElemen({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Others',
        textAlign: TextAlign.center,
      ),
      content: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 80,
            child: MenuButton(
              text: 'Aktinium',
              color: ChemistryColorApp.containerMenu10,
              imagePath: 'elemenicon10.png',
            ),
          ),
          SizedBox(
            height: 80,
            child: MenuButton(
              text: 'Lantanum',
              color: ChemistryColorApp.containerMenu8,
              imagePath: 'elemenicon8.png',
            ),
          ),
          SizedBox(
            height: 83,
            width: 80,
            child: MenuButton(
              text: 'Tidak Diketahui',
              color: ChemistryColorApp.containerMenu9,
              imagePath: 'elemenicon9.png',
            ),
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          child: Text('Close'),
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
        ),
      ],
    );
  }
}
