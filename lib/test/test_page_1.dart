import 'package:flutter/material.dart';

class TestPage1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TestPage1State();
}

class _TestPage1State extends State<TestPage1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter layout Demo"),
      ),
      body: ListView(
        children: [
          Image.asset(
            "images/lake.jpg",
            fit: BoxFit.fitWidth,
          ),
          _buildTitleSection(),
          _buildButtonSection(),
          _buildTextSection()
        ],
      ),
    );
  }

  Widget _buildTitleSection() {
    return Container(
      padding: EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Oeschinen Lake Campground",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Kandersteg, Switzerland",
                  style: TextStyle(fontSize: 14),
                )
              ],
            ),
          ),
          FavoriteWidget()
        ],
      ),
    );
  }

  Widget _buildButtonSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Icons.call, "call"),
        _buildButtonColumn(Icons.near_me, "ROUTE"),
        _buildButtonColumn(Icons.call, "share")
      ],
    );
  }

  Widget _buildButtonColumn(IconData icon, String label) {
    Color color = Theme.of(context).primaryColor;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            height: 8,
          ),
          Text(
            label.toUpperCase(),
            style: TextStyle(fontSize: 12, color: color),
          )
        ],
      ),
    );
  }

  Widget _buildTextSection() => Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Text(
          'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
          'Alps. Situated 1,578 meters above sea level, it is one of the '
          'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
          'half-hour walk through pastures and pine forest, leads you to the '
          'lake, which warms to 20 degrees Celsius in the summer. Activities '
          'enjoyed here include rowing, and riding the summer toboggan run.',
          softWrap: true,
        ),
      );
}

class FavoriteWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FavoriteState();

}

class _FavoriteState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(_isFavorited ? Icons.star : Icons.star_border,
                color: _isFavorited ? Colors.red[500] : Colors.grey[500]),
            Container(child: Text("$_favoriteCount"), width: 18,),
          ],
        ),
      ),
      onTap: _toggleFavorite,
    );
  }

  _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
      _favoriteCount = _favoriteCount + (_isFavorited ? 1 : -1);
    });
  }

}
