import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:xml2json/xml2json.dart';

import 'Widgets/Carousel.dart';
import 'Widgets/Loader.dart';
import 'Widgets/ShimmerView.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Xml2Json xml2json = new Xml2Json();
  var data;
  bool isLoading = true;
  String id;
  String title;
  var img = [];
  List<String> my;

  String interest;
  int price;
  String date;
  String address;
  String trainerName;
  String trainerImg;
  String trainerInfo;
  String occasionDetail;

  @override
  void initState() {
    _getData();
    super.initState();
  }

  _getData() async {
    var _url = "http://skillzycp.com/api/UserApi/getOneOccasion/389/0";
    var response = await http.get(_url);
    var data = json.decode(json.decode(response.body));
    print(data);
    if (data["id"].toString() != null) {
      setState(() {
        id = data["id"].toString();
        title = data["title"].toString();
        img = data["img"];
//        for(int i=0;i<img.length;i++){
//
//        }
        my = [
          "https://media.falsoo.com/large/2019/12/26/201912261117371737.jpg",
          "https://i.pinimg.com/474x/e4/8c/c2/e48cc2036cb6e99958df546d56ce3497.jpg",
          "https://i0.wp.com/www.comicsgate.net/home/wp-content/uploads/2019/11/70033911_737422496702741_2709758909303750656_o.jpg?w=630&ssl=1"
        ];

        interest = data["interest"];
        price = data["price"];
        date = data["date"];
        address = data["address"];
        trainerName = data["trainerName"];
        trainerImg = data["trainerImg"];
        trainerInfo = data["trainerInfo"];
        occasionDetail = data["occasionDetail"];
        print(img);
        isLoading = false;
      });

      print("+++++++++++++++++++++++++++");
      print(trainerImg.substring(0, 4) + trainerImg.substring(5));
    }
    print(data["id"]);
    print(data["title"]);
    print(data["interest"]);
    print(data["price"]);
    print(data["date"]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading == true
          ? Loader()
          : Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ListView(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
//                isLoading == false
//                    ? ShimmerView(
//                  height: MediaQuery.of(context).size.width * 0.45,
//                  width: MediaQuery.of(context).size.width * 0.9,
//                  radius: 3,
//                )
//                    :
                      Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width,
                        child: Carousel(
                          img: [
                            "https://media.falsoo.com/large/2019/12/26/201912261117371737.jpg",
                            "https://i.pinimg.com/474x/e4/8c/c2/e48cc2036cb6e99958df546d56ce3497.jpg",
                            "https://i0.wp.com/www.comicsgate.net/home/wp-content/uploads/2019/11/70033911_737422496702741_2709758909303750656_o.jpg?w=630&ssl=1"
                          ],
                        ),
                      ),
//                      Container(
//                        height: 300,
//                        child: Carousel(
//                          autoplayDuration: Duration(seconds: 1),noRadiusForIndicator: true,moveIndicatorFromBottom: 4.0,overlayShadowSize: 4.0,
//                          borderRadius: true,
//                          dotColor: Colors.grey,
//                          dotBgColor: Colors.transparent,
//                          dotSize: 4.0,
//                          autoplay: true,animationDuration: Duration(milliseconds: 500),
//                          dotIncreaseSize:3.0,
//                          indicatorBgPadding: 3,
//                          images: my.map((item) {
//                            return NetworkImage(item);
//                          }).toList(),
//                        ),
//                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 4.0, right: 4.0),
                                    child: Icon(
                                      Icons.star_border,
                                      color: Colors.grey,
                                      size: 25.0,
                                    ),
                                  ),
                                  Icon(
                                    Icons.scatter_plot,
                                    size: 25.0,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                                size: 20.0,
                              ),
                            ]),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            isLoading == true
                                ? ShimmerView(
                                    height:
                                        MediaQuery.of(context).size.width * 0.1,
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    radius: 3,
                                  )
                                : Text(
                                    title,
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 9,
                                        fontWeight: FontWeight.bold),
                                  ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Text(
                                "#",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ]),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                        child: Text(
                          title,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            date.substring(0, 10),
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 8.0, left: 8.0),
                            child: Icon(
                              Icons.date_range,
                              size: 18.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            address,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 8.0, left: 8.0),
                            child: Icon(
                              Icons.location_on,
                              size: 18.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            trainerName,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  trainerImg.substring(0, 4) +
                                      trainerImg.substring(5)),
                              maxRadius: 25.0,
                              backgroundColor: Colors.grey,
                            ),
                          )
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(4.0),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.09,
                        child: Text(
                          trainerInfo,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                          maxLines: 3,
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:8.0,right: 8.0),
                        child: myTitle(
                          "عن الدورة", 14,
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(12.0),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: Text(
                            occasionDetail,
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                                fontSize: 12),
                            maxLines: 3,
                          )),
                      Divider(color: Colors.grey, thickness: 1),
                      myTitle("تكلفة  الدورة", 14),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(children: <Widget>[
                              myText("SAR", 12.0),
                              myText("40", 12.0)
                            ]),
                            myText("الحجز العادي", 12.0)
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(children: <Widget>[
                              myText("SAR", 12.0),
                              myText("40", 12.0)
                            ]),
                            myText("الحجز العادي", 12.0)
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(children: <Widget>[
                              myText("SAR", 12.0),
                              myText("40", 12.0)
                            ]),
                            myText("الحجز العادي", 12.0)
                          ]),
                      Container(
                          margin: EdgeInsets.only(top: 30.0),
                          height: 60.0,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(color: Colors.deepPurple),
                          child: FlatButton(
                              onPressed: null,
                              child: Text(
                                "قم بالحجز الان",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              color: Colors.cyan))
                    ],
                  ),
                ],
              ),
            ),
    );
  }

  Widget myTitle(String text, double font) {
    return Container(
        margin: EdgeInsets.only(left: 2.0, right: 2.0),
        child: Text(text,
            style: TextStyle(
                color: Colors.grey,
                fontSize: font,
                fontWeight: FontWeight.bold)));
  }

  Widget myText(String text, double font) {
    return Container(
        margin: EdgeInsets.only(left: 4.0, right: 16.0),
        child: Text(text,
            style: TextStyle(
                color: Colors.grey,
                fontSize: font,
                fontWeight: FontWeight.w600)));
  }
}
