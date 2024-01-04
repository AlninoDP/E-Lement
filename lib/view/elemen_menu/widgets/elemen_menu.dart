import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimiaapp/core/elemen_item_config.dart';

class ElemenMenu extends StatelessWidget {
  final ElemenItemConfig elemenItemConfig;
  final void Function() onTap;
  const ElemenMenu(
      {super.key, required this.elemenItemConfig, required this.onTap});

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
            color: elemenItemConfig.containerColor,
            borderRadius: BorderRadius.all(
              const Radius.circular(20).w,
            ),
          ),
          padding: const EdgeInsets.all(8).w,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(elemenItemConfig.symbol,
                    style: TextStyle(
                        color: elemenItemConfig.textColor,
                        fontSize: 26.sp,
                        fontWeight: FontWeight.bold)),
                Text(
                  textAlign: TextAlign.center,
                  elemenItemConfig.title,
                  style: TextStyle(
                    color: elemenItemConfig.textColor,
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
