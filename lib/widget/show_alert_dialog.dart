import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowAlertDialog extends StatelessWidget {
  const ShowAlertDialog({required this.title, required this.des, required this.btnTxt, super.key});

  final String title, des, btnTxt;


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      titleTextStyle: TextStyle(
        fontSize: 25.sp,
        color: Colors.black,
      ),
      content:  Text(
        des,
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child:  Text(btnTxt),
        )
      ],
    );
  }
}