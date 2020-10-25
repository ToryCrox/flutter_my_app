import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true, //返回
        title: Text("Test"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => _getChild(index),
        ),
      ),
    );
  }

  Widget _getChild(int index) {
    return Card(
      shadowColor: Colors.purple,
      elevation: 1,
      margin: EdgeInsets.all(4),
      child: InkWell(
        onTap: () {

        },
        child: Container(
          padding: EdgeInsets.only(left: 20, top: 16, right: 20, bottom: 20 ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  child: Text(
                    "child " + index.toString(),
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              Text("child end " + index.toString()),
            ],
          ),
        ),
      )
    );
  }
}
