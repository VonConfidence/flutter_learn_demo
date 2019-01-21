import 'package:flutter/material.dart';

class ConstrainedboxStackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Demo'),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // 对子组件添加限制
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 50.0,
              maxWidth: 50.0,
            ),
            child: Container(
              color: Colors.pink,
            ),
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              AspectRatio(
                // 宽高比为3:2
                aspectRatio: 3.0 / 2.0,
                child: Container(
                  color: Colors.red,
                ),
              ),
              SizedBox(
                width: 100,
                height: 200.0,
                child: Container(
                  // 将child放在父组件中的位置 默认是0,0
                  alignment: Alignment(0.5, 0.5),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
                ),
              ),
              SizedBox(
                width: 50,
                height: 50.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    // borderRadius: BorderRadius.circular(8.0),
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        Color.fromRGBO(7, 102, 255, 1.0),
                        Color.fromRGBO(3, 54, 255, 1.0),
                      ],
                    ),
                  ),
                  child:
                      Icon(Icons.brightness_2, color: Colors.white, size: 32.0),
                ),
              ),
              Positioned(
                right: 20.0,
                top: 20.0,
                child: Icon(
                  Icons.brightness_auto,
                  color: Colors.white,
                  size: 32.0,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // IconBadge(Icons.pool, size: 64.0),
              // IconBadge(Icons.android, size: 64.0),
              // IconBadge(Icons.watch, size: 64.0),
              SizedBox(
                width: 100,
                height: 150.0,
                child: Container(
                  // 将child放在父组件中的位置 默认是0,0
                  alignment: Alignment(0.5, 0.5),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
                ),
              ),
              SizedBox(
                width: 32.0,
              ),
              SizedBox(
                width: 100,
                height: 150.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child:
                      Icon(Icons.brightness_2, color: Colors.white, size: 32.0),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
