import 'package:flutter/material.dart';
import 'package:kimiaapp/models/data/elemen_item_grid.dart';

class UnsurElemenGridItem extends StatelessWidget {
  final ElemenItemGrid categoryItemGrid;
  final void Function() onTap;
  const UnsurElemenGridItem(
      {super.key, required this.categoryItemGrid, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: Colors.black,
      elevation: 50,
      color: Colors.transparent,
      child: InkWell(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        onTap: onTap,
        child: Ink(
          decoration: BoxDecoration(
            color: categoryItemGrid.containerColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(categoryItemGrid.symbol,
                    style: TextStyle(
                        color: categoryItemGrid.textColor,
                        fontSize: 26,
                        fontWeight: FontWeight.bold)),
                Text(
                  textAlign: TextAlign.center,
                  categoryItemGrid.title,
                  style: TextStyle(
                    color: categoryItemGrid.textColor,
                    fontSize: 26,
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
