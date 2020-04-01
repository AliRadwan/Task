import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  final List img;

  const Carousel({Key key, this.img}) : super(key: key);

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
//Auto playing carousel
    return CarouselSlider(height: 300.0,
      viewportFraction: 1.0,
      aspectRatio: 1.0,
      autoPlay: true,
      initialPage: 3,
      reverse: true,
      enlargeCenterPage: true,
      autoPlayInterval: Duration(seconds: 2),
      enableInfiniteScroll: true,
      autoPlayAnimationDuration: Duration(milliseconds: 1000),
      pauseAutoPlayOnTouch: Duration(seconds: 10),
      items: widget.img.map(
        (url) {
          return Container(
//            margin: EdgeInsets.all(4.0),
            child: ClipRRect(
//              borderRadius: BorderRadius.all(Radius.circular(0.0)),
              child: InkWell(
                onTap: () => showImageDialog(url),
                child: Image.network(
                  url,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ),
          );
        },
      ).toList(),
    );
  }

  void showImageDialog(String image) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoDialog(
            child: Image.network(image),
          );
        });
  }
}
