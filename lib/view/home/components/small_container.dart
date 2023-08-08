import 'package:flutter/material.dart';
class SmallContainer extends StatelessWidget {
  const SmallContainer({super.key,required this.text,required this.image, this.color,this.textColor});
  final String text;
  final String image;
  final Color? color;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color:color ?? Colors.grey.withOpacity(.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(image),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          text,
          style:  TextStyle(fontWeight: FontWeight.bold,
          color: textColor?? Colors.black
          ),
        )
      ],
    );
  }
}
