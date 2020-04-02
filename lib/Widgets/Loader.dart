import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loader extends StatefulWidget {
  @override
  _LoaderState createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: _loadingView()));
  }

  Widget _loadingView() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: <Widget>[
              SpinKitSquareCircle(
                size: 40,
                color: Theme.of(context).primaryColor,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("loading",
                  style: TextStyle(fontFamily: "Cairo", fontSize: 16.0,fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
