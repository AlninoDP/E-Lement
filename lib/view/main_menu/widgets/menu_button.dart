import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        borderRadius: BorderRadius.all(
          const Radius.circular(30).w,
        ),
        onTap: ontap,
        child: Ink(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(
              const Radius.circular(30).w,
            ),
          ),
          padding: const EdgeInsets.all(8).w,
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
                width: 60.w,
                child: Image.asset(
                  'assets/icons/$imagePath',
                ),
              ),
              Expanded(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 11.sp,
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
