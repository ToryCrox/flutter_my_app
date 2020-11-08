import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

//for https://juejin.im/post/6844903652340039693#heading-3
class TestTabBarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TestTabBarPage>
    with TickerProviderStateMixin {
  TabController _tabController;
  PageController _pageController;
  List<String> _tabItems = ["主页", "动态", "我的"];

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
    var arguments = ModalRoute.of(context).settings.arguments;
    print("TestTabBarPage: $arguments");
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

  int _DataCount = 0;
  bool _isLoading = false;

  GlobalKey<RefreshIndicatorState> _refreshIndicatorKey;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.position == _scrollController.positions.last) {
        if (this.onLoadMore != null && !_isLoading) {
          this.onLoadMore();
        }
      }
    });
    onRefresh();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  int getItemCount() {
    return _DataCount + 1;
  }

  int getDataCount() {
    return _DataCount;
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading && getDataCount() == 0) {
      return _buildLoadingWidget();
    }
    _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();
    return RefreshIndicator(key: _refreshIndicatorKey,
      onRefresh: onRefresh,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: getItemCount(),
        itemBuilder: (context, index) => _buildRow(context, index),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

  Future<void> onRefresh() async {
    _isLoading = true;
    await Future.delayed(Duration(seconds: 5));
    setState(() {
      _isLoading = false;
      _DataCount = 30;
    });
  }

  void onLoadMore() async {
    _isLoading = true;
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      _isLoading = false;
      _DataCount += 20;
    });
  }

  Widget _buildLoadingWidget() {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            child: SpinKitDoubleBounce(
              color: Theme.of(context).primaryColor,
              duration: Duration(seconds: 4),
            ),
            width: 18,
            height: 18,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "加载中",
            style: TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }

  Widget _buildLoadMoreWidget() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: _buildLoadingWidget(),
    );
  }

  Widget _buildRow(BuildContext context, int index) {
    if (index == getItemCount() - 1) {
      return _buildLoadMoreWidget();
    }
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: InkWell(
        onTap: () => { Navigator.of(context).pop()},
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            children: [Text("Item: $index")],
          ),
        ),
      ),
    );
  }
}
