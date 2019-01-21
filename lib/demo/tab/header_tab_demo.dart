import 'package:flutter/material.dart';
// import './components/friends_list.dart';

class TabBarDetail extends StatefulWidget {
  TabBarDetail();

  @override
  _TabBarDetailState createState() => new _TabBarDetailState();
}

const double _kAppBarHeight = 256.0;

class _TabBarDetailState extends State<TabBarDetail>
    with TickerProviderStateMixin {
  List<Tab> _tabs;
  TabController _controller;

  Widget _companyTabContent;
  VoidCallback onChanged;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabs = [
      new Tab(text: '好友'),
      new Tab(text: '群聊'),
      new Tab(text: '设备'),
      new Tab(text: '通讯录'),
      new Tab(text: '公众号'),
    ];
    _companyTabContent = Center(
      child: Text('Hello Tab1'),
    );
    _controller = new TabController(length: _tabs.length, vsync: this);
    onChanged = () {
      setState(() {
        if (_currentIndex == 0) {
          _companyTabContent = Container(
            child: Text('Hello Tab1'),
          );
        } else {
          _companyTabContent = Container(
            width: 400,
            height: 500,
            child: new Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                left: 0,
                right: 10.0,
                bottom: 10.0,
              ),
              child: new Container(
                color: Colors.white,
                child: new Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ListView(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.chevron_right),
                        title: Text('特别关心'),
                        trailing: Text(
                          '0/0',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
        _currentIndex = this._controller.index;
      });
    };

    _controller.addListener(onChanged);
  }

  @override
  void dispose() {
    _controller.removeListener(onChanged);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          new Divider(
            color: Colors.black54,
          ),
          new TabBar(
            indicatorWeight: 3.0,
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: new TextStyle(fontSize: 16.0),
            labelColor: Colors.black,
            controller: _controller,
            tabs: _tabs,
            indicatorColor: Theme.of(context).primaryColor,
            // indicatorColor: Colors.purple,
          ),
          _companyTabContent,
        ],
      ),
    );
  }
}
