import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimiaapp/models/elemen_item_grid.dart';

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
        borderRadius: BorderRadius.all(
          const Radius.circular(20).w,
        ),
        onTap: onTap,
        child: Ink(
          decoration: BoxDecoration(
            color: categoryItemGrid.containerColor,
            borderRadius: BorderRadius.all(
              const Radius.circular(20).w,
            ),
          ),
          padding: const EdgeInsets.all(8).w,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(categoryItemGrid.symbol,
                    style: TextStyle(
                        color: categoryItemGrid.textColor,
                        fontSize: 26.sp,
                        fontWeight: FontWeight.bold)),
                Text(
                  textAlign: TextAlign.center,
                  categoryItemGrid.title,
                  style: TextStyle(
                    color: categoryItemGrid.textColor,
                    fontSize: 26.sp,
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
