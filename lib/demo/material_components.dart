import 'package:flutter/material.dart';

import './alert_dialog_demo.dart';
import './button_demo.dart';
import './button_sheet_demo.dart';
import './card_demo.dart';
import './container_demo.dart';
import './constrainedbox_stack_demo.dart';
import './chip_demo.dart';
import './counter_demo.dart';
import './data_table_demo.dart';
import './expansion_panel_demo.dart';
import './favarite_words_demo.dart';
import './gridview_demo.dart';
import './gridview_posts_demo.dart';
import './image_demo.dart';
import './layout_demo.dart';
import './list_view_demo.dart';
import './listview_demo.dart';
import './navigator_route_demo.dart';
import './paginated_data_table_demo.dart';
import './popup_button_demo.dart';
import './posts_demo.dart';
import './simple_dialog_demo.dart';
import './snack_bar_demo.dart';
import './stack_demo.dart';
import './stepper_demo.dart';
import './shopping_list_demo.dart';
import './sliver_demo.dart';
import './tab_widget_demo.dart';
import './tab_bar_demo.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Components'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
            title: 'ContainerDemo',
            page: ContainerDemo(),
          ),
          ListItem(
            title: 'ListViewDemo',
            page: ListViewDemo(),
          ),
          ListItem(
            title: 'ListViewDemo2',
            page: ListViewContainerDemo(),
          ),
          ListItem(
            title: 'StackDemo',
            page: StackDemo(),
          ),
          ListItem(
            title: 'LayoutDemo',
            page: LayoutDemo(),
          ),
          ListItem(
            title: 'TabWidgetDemo',
            page: TabWidgetDemo(),
          ),
          ListItem(
            title: 'ConstrainedboxStackDemo',
            page: ConstrainedboxStackDemo(),
          ),
          ListItem(
            title: 'ImageDemo',
            page: ImageDemo(),
          ),
          ListItem(
            title: 'SliverDemo',
            page: SliverDemo(),
          ),
          ListItem(
            title: 'CounterDemo',
            page: CounterDemo(),
          ),
          ListItem(
            title: 'TabBarDemo',
            page: TabBarDemoContainer(),
          ),
          ListItem(
            title: 'FloatingActionButton',
            page: FloatingActionButtonDemo(),
          ),
          ListItem(
            title: 'GridViewDemo',
            page: GridViewDemo(),
          ),
          // ListItem(
          //   title: 'GridViewExtentDemo',
          //   page: GridViewExtentDemo(),
          // ),
          // ListItem(
          //   title: 'GridViewCountDemo',
          //   page: GridViewCountDemo(),
          // ),
          ListItem(
            title: 'ButtonDemo',
            page: ButtonDemo(),
          ),
          ListItem(
            title: 'PopupButtonDemo',
            page: PopupButtonDemo(),
          ),
          ListItem(
            title: 'SimpleDialogDemo',
            page: SimpleDialogDemo(),
          ),
          ListItem(
            title: 'AlertDialogDemo',
            page: AlertDialogDemo(),
          ),
          ListItem(
            title: 'ButtonSheetDemo',
            page: ButtonSheetDemo(),
          ),
          ListItem(
            title: 'SnackBarDemo',
            page: SnackBarDemo(),
          ),
          ListItem(
            title: 'ExpansionPanelDemo',
            page: ExpansionPanelDemo(),
          ),
          ListItem(
            title: 'ChipDemo',
            page: ChipDemo(),
          ),
          ListItem(
            title: 'DataTableDemo',
            page: DataTableDemo(),
          ),
          ListItem(
            title: 'PaginatedDataTableDemo',
            page: PaginatedDataTableDemo(),
          ),
          ListItem(
            title: 'CardDemo',
            page: CardDemo(),
          ),
          ListItem(
            title: 'StepperDemo',
            page: StepperDemo(),
          ),
          ListItem(
            title: 'FavoriteWordsDemo',
            page: FavoriteWordsDemo(),
          ),
          ListItem(
            title: 'ShoppingListDemo',
            page: ShoppingListDemo(),
          ),
          ListItem(
            title: 'PostsDemo',
            page: PostsDemo(),
          ),
          ListItem(
            title: 'GridViewPostsDemo',
            page: GridViewPostsDemo(),
          ),
          ListItem(
            title: 'NavigatorRouteDemo',
            page: NavigatorRouteWidget(),
          ),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}

class FloatingActionButtonDemo extends StatelessWidget {
  final Widget _floatingActionButton = FloatingActionButton(
    onPressed: () {},
    child: Icon(Icons.add),
    // 与下一层的贴合
    elevation: 0.0,
    // 按钮颜色
    // backgroundColor: Colors.black87,

    // 正方形
    // shape: BeveledRectangleBorder(
    //   borderRadius: BorderRadius.circular(10.0), // 30.0 是菱形的
    // ),
  );

  final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
    onPressed: () {},
    icon: Icon(Icons.add),
    label: Text('add'),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
      ),
      floatingActionButton: _floatingActionButton,
      // floatingActionButton: _floatingActionButtonExtended,

      // 让按钮在底部线条的垂直居中位置
      // floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // 底部位置确定
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
        ),
        // button处 留一个缺口
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}
