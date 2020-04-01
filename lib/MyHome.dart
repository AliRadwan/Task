import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widgets/Carousel.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
//          margin: EdgeInsets.only(bottom: 10),
//          padding: EdgeInsets.only(bottom: 15),
          child: CustomScrollView(primary: true, shrinkWrap:false, slivers: <Widget>[
//            SliverPersistentHeader(
//              pinned: false,
//              floating: true,
//              delegate: ,
          //    https://www.youtube.com/watch?v=E3-WdYBrEDc
//            ),
            SliverAppBar(
              backgroundColor: Colors.transparent,
              expandedHeight: 300,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black),
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.parallax,
                background: Hero(
                    tag: "DemoTag",
//                    widget.routeArgument.heroTag ?? '' + _con.food.id,
                    child:   Stack(
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
                        Padding(
                          padding: const EdgeInsets.only(top: 35.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.scatter_plot,size: 25.0,color: Colors.grey,),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 4.0,right: 4.0),
                                      child: Icon(
                                        CupertinoIcons.flag,
                                        color: Colors.grey,
                                        size: 25.0,
                                      ),
                                    ),
                                    Icon(
                                      CupertinoIcons.share_up,
                                      color: Colors.grey,
                                      size: 25.0,
                                    ),


                                  ],
                                ),
                                Icon(
                                  CupertinoIcons.forward,
                                  color: Colors.grey,
                                  size: 25.0,
                                ),

                              ]),
                        ),
                      ],
                    ),

                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                child: Column(
                  children: [
                    Text(
                      "#",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "الاسم الكامل للدوره بشكل افتراضي ليس الا",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "20/03/2020",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.date_range,
                          size: 25.0,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "عنوان الدوره يا او الحدث",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.location_on,
                          size: 25.0,
                          color: Colors.grey,
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
                          "اسم المدرب",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://media.falsoo.com/large/2019/12/26/201912261117371737.jpg"),
                            maxRadius: 30.0,
                            backgroundColor: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.all(4.0),
                      height: 70.0,
                      child: Text(
                        "هذا النص هوه مجرد مثال ليس الا  هذا النص هوه مجرد مثال ليس الاهذا النص هوه مجرد مثال ليس الاهذا النص هوه مجرد مثال ليس الاهذا النص هوه مجرد مثال ليس الاهذا النص هوه مجرد مثال ليس الا هوه مجرد مثال ليس الاهذا النص هوه مجرد مثال ليس الا",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
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
                    Text(
                      "عن الدورة",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.all(4.0),
                      height: 70.0,
                      child: Text(
                        "هذا النص هوه مجرد مثال ليس الا  هذا النص هوه مجرد مثال ليس الاهذا النص هوه مجرد مثال ليس الاهذا النص هوه مجرد مثال ليس الاهذا النص هوه مجرد مثال ليس الاهذا النص هوه مجرد مثال ليس الا هوه مجرد مثال ليس الاهذا النص هوه مجرد مثال ليس الا",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
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
                    Text(
                      "تكلفة  الدورة",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Text(
                                "SAR",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              "40",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                          "الحجز العادي",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Text(
                                "SAR",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              "40",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                          "الحجز العادي",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Text(
                                "SAR",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              "40",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                          "الحجز العادي",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
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
              ),
            ),
          ])),
    );
  }
}
