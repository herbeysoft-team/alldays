import 'package:alldays/utils/dimensions.dart';
import 'package:flutter/material.dart';

class BigText extends StatelessWidget{
  final Color? color;
  final String text;
  double size;
  TextOverflow textOverflow;

  BigText({Key? key,
      this.color = const Color(0xFF332d2b),
      required this.text,
      this.size = 0,
      this.textOverflow = TextOverflow.ellipsis}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        maxLines: 1,
        overflow: textOverflow,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          color: color,
          fontSize: size == 0? Dimensions.font20:size,

        ),
    );
  }
}
