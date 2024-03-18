import 'package:flutter/material.dart';

class LikableImage extends StatefulWidget {
  final String imagePath;

  const LikableImage({super.key, required this.imagePath});

  @override
  LikableImageState createState() => LikableImageState();
}

class LikableImageState extends State<LikableImage> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          ),
          height: 130,
          width: 150,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              widget.imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 8,
          right: 8,
          child: IconButton(
            icon: Icon(
              isLiked ? Icons.favorite : Icons.favorite_border,
              color: isLiked ? Colors.red : Colors.white,
              size: 32,
            ),
            onPressed: () {
              setState(() {
                isLiked = !isLiked;
              });
            },
          ),
        ),
      ],
    );
  }
}
