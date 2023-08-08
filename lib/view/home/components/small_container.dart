import 'package:flutter/material.dart';
class SmallContainer extends StatelessWidget {
  const SmallContainer(this.text, this.image, {super.key});
  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(.1),
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
          style: const TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
