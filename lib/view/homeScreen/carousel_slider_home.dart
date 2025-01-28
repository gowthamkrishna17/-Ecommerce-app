import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderHome extends StatelessWidget {
  const CarouselSliderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: CarouselSlider(items: [
          Image.asset(
            'assets/images/onam-offer.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/sweets.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/Sadhya.jpg',
            fit: BoxFit.cover,
          ),
        ], options: CarouselOptions(autoPlay: false, viewportFraction: 1.0)),
      ),
    );
  }
}
