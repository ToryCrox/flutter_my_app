import 'package:flutter/material.dart';

//for https://juejin.im/post/6844903652340039693#heading-3
class TestTabBarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TestTabBarPage>
    with TickerProviderStateMixin{
  TabController _tabController;
  PageController _pageController;
  List<String> _tabItems = ["主页", "动态","我的"];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _tabItems.length);
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBarPage"),
      ),
      body: PageView(
        controller: _pageController,
        children: _buildPage(),
        onPageChanged: (index) {
          _tabController.animateTo(index);
        },
      ),
      bottomNavigationBar: Material(
        child: TabBar(
          controller: _tabController,
          tabs: _buildTabItems(),
          onTap: (index) {
           _pageController.jumpToPage(index);
          },
        ),
      ),
    );
  }

  List<Widget> _buildTabItems() {
    List<Widget> tabButtons = [];
    for (int i = 0; i < _tabItems.length; i++) {
      final tabButton = FlatButton(
        child: Text(_tabItems[i]),
        padding: EdgeInsets.symmetric(vertical: 16),
      );
      tabButtons.add(tabButton);
    }
    return tabButtons;
  }

  List<Widget> _buildPage() {
    return _tabItems.map((e) => _TabPage(e)).toList();
  }
}


class _TabPage extends StatefulWidget {

  final String title;

  _TabPage(this.title);

  @override
  State<StatefulWidget> createState() => _TabPageState();
}

class _TabPageState extends State<_TabPage> with AutomaticKeepAliveClientMixin {

  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {

    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      child: ListView.builder(
        itemCount: 100,

      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

}
