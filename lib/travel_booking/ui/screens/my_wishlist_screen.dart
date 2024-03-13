import 'package:flutter/material.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_string_constent.dart';

class MyWishlistScreen extends StatefulWidget {
  const MyWishlistScreen({Key? key}) : super(key: key);

  @override
  State<MyWishlistScreen> createState() => _MyWishlistScreenState();
}

class _MyWishlistScreenState extends State<MyWishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStringConstant.myWishlist),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildImageRow(),
            const SizedBox(height: 16),
            _buildLocationRow(),
            const SizedBox(height: 24),
            _buildImageRow(),
            const SizedBox(height: 16),
            _buildLocationRow(),
            const SizedBox(height: 24),
            _buildImageRow(),
            const SizedBox(height: 16),
            _buildLocationRow(),
          ],
        ),
      ),
    );
  }

  Widget _buildImageRow() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        LikeableImage(imagePath: AppStringConstant.image1Path),
        LikeableImage(imagePath: AppStringConstant.image2Path),
      ],
    );
  }

  Widget _buildLocationRow() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(AppStringConstant.tahitiBeach),
        Icon(
          Icons.location_pin,
          size: 14,
        ),
        Text(AppStringConstant.stLuciaMountain),
        Icon(
          Icons.location_pin,
          size: 14,
        ),
      ],
    );
  }
}

class LikeableImage extends StatefulWidget {
  final String imagePath;

  const LikeableImage({Key? key, required this.imagePath}) : super(key: key);

  @override
  _LikeableImageState createState() => _LikeableImageState();
}

class _LikeableImageState extends State<LikeableImage> {
  bool _liked = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        setState(() {
          _liked = !_liked;
        });
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            widget.imagePath,
            width: screenSize.width * 0.4, // Adjust as needed
            height: screenSize.width * 0.4, // Adjust as needed
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 8,
            right: 8,
            child: IconButton(
              icon: Icon(
                _liked ? Icons.favorite : Icons.favorite,
                color: _liked ? Colors.red : Colors.red,
              ),
              onPressed: () {
                setState(() {
                  _liked = !_liked;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
