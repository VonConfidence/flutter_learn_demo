import 'package:flutter/material.dart';

class ExpansionPanelDemo extends StatefulWidget {
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  List<ExpansionPanelItem> _expansionPanelItems = [];

  @override
  void initState() {
    super.initState();

    _expansionPanelItems = <ExpansionPanelItem>[
      ExpansionPanelItem(
        headerText: 'Panel A',
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text('Content for Panel A'),
        ),
        isExpanded: false,
      ),
      ExpansionPanelItem(
        headerText: 'Panel B',
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text('Content for Panel B'),
        ),
        isExpanded: false,
      ),
      ExpansionPanelItem(
        headerText: 'Panel C',
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text('Content for Panel C'),
        ),
        isExpanded: false,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    List<ExpansionPanel> _renderExpanelItems =
        _expansionPanelItems.map((ExpansionPanelItem item) {
      return ExpansionPanel(
        headerBuilder: (BuildContext context, bool isExpanded) {
          return Container(
            padding: EdgeInsets.all(16.0),
            child:
                Text(item.headerText, style: Theme.of(context).textTheme.title),
          );
        },
        body: item.body,
        isExpanded: item.isExpanded,
      );
    }).toList();

    ExpansionPanel _lastItem = ExpansionPanel(
      headerBuilder: (BuildContext context, bool isExpanded) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Text('Panel S', style: Theme.of(context).textTheme.title),
        );
      },
      body: Container(
        padding: EdgeInsets.all(16.0),
        width: double.infinity,
        child: Text('Content for panel S'),
      ),
      isExpanded: true,
    );
    //手动插入一项
    // _renderExpanelItems.insert(0, _lastItem);
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionPanelDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ExpansionPanelList(
                children: _renderExpanelItems,
                expansionCallback: (int panelIndex, bool isExpanded) {
                  setState(() {
                    _expansionPanelItems[panelIndex].isExpanded = !isExpanded;
                  });
                }),
          ],
        ),
      ),
    );
  }
}

class ExpansionPanelItem {
  final String headerText;
  final Widget body;
  bool isExpanded;

  ExpansionPanelItem({
    @required this.headerText,
    @required this.body,
    this.isExpanded,
  });
}
