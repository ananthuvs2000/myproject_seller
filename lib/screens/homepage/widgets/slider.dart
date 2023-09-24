import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  int _currentIndex = 0;
  List<String> _imageList = [
    'assets/images/topbar.jpeg',
    'assets/images/topbar2.jpeg',
    'assets/images/biriyani.jpg',
    
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: _imageList.map((image) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  
                  
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 2,right: 2),
                  decoration: BoxDecoration(
                    
                    color: Colors.white,
                  ),
                  child: ClipRRect(
                  borderRadius: BorderRadius.circular(10), 
                  child: Image.asset(
                    image,
                   
                    fit: BoxFit.cover,
                  ),),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: 200.0,
            autoPlay: true,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _imageList.map((image) {
            int index = _imageList.indexOf(image);
            return Container(
              width: 20.0,
              height: 10.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: _currentIndex == index ? Colors.grey.shade800 : Colors.grey,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}