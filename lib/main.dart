import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class CarouselSliderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Carousel Slider Example'),
        ),
        body: Center(
          child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 16/9, // Set the aspect ratio of the carousel
              autoPlay: true, // Auto-play the carousel
              enlargeCenterPage: true, // Enlarge the center item
              enableInfiniteScroll: true, // Enable infinite scrolling
              viewportFraction: 0.8, // Fraction of the viewport to show
            ),
            items: [
              Container(
                color: Colors.red,
                child: Center(
                  child: Text('Item 1', style: TextStyle(fontSize: 24.0, color: Colors.white)),
                ),
              ),
              Container(
                color: Colors.green,
                child: Center(
                  child: Text('Item 2', style: TextStyle(fontSize: 24.0, color: Colors.white)),
                ),
              ),
              Container(
                color: Colors.blue,
                child: Center(
                  child: Text('Item 3', style: TextStyle(fontSize: 24.0, color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(CarouselSliderDemo());
}