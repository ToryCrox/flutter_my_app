import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TestPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TestPageState();

}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,//返回
        title: Text("Test"),
      ),
      body: Container(
        child: Text("Test"),
      ),
    );
  }

  Widget _getChild(int index) {
    return Container(
      child:  Text("child " + index.toString())
    );
  }
}