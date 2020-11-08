import 'package:flutter/material.dart';
import 'test/test_page.dart';
import 'test/test_page_1.dart';
import 'test/test_tabbar_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

final routeMap = {
  "/test": (context) => TestPage(),
  "/testPage1": (context) => TestPage1(),
  "/testTabBarPage": (context) => TestTabBarPage(),
};

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Flutter Tory'),
      routes: routeMap,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10),
        child: ListView.builder(
          itemCount: routeMap.length,
          itemBuilder: _buildRoutItem,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {Navigator.of(context).pushNamed('/test', arguments: {"src": "home"})},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  final routePaths = routeMap.keys.toList();

  Widget _buildRoutItem(BuildContext context, int index) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      child: InkWell(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          child: Text(routePaths[index]),
        ),
        onTap: () {
          Navigator.of(context).pushNamed(routePaths[index]);
        },
      ),
    );
  }
}
