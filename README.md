## dart

1. web 开发
2. 跨平台移动应用开发(flutter)
3. 脚本或者服务端开发

## flutter

1. 简介

   - 120fps 超高性能
   - 技术生态 awesome-flutter
   - 前置知识

2. 开发环境搭建

   - java
   - android sdk (flutter, dart 插件)
   - flutter doctor --android-licenses
   - 针对安装 license[错误解决方案](https://stackoverflow.com/questions/49306527/failed-to-move-away-or-delete-existing-target-c-androidsdk-sdk-tools)

     ```
     # 针对出现 Failed to move away or delete existing target AndroidSDK\sdk\tools

      First, I renamed AndroidSDK\tools to AndroidSDK\tool.

      Then, I set the windows' environment variable Path from AndroidSDK\tools to AndroidSDK\tool (maybe not necessary)

      Run sdkmanager --update in tool\bin .

      Ignore the warning and wait until the update is done.

      There will be a new folder named tools in AndroidSDK.

      Copy all the files in tools folder and paste them to tool folder.

      Overlay all the files that which has the same name in tool folder.

      Finally,delete tools folder and rename tool to tools.

      Problem solved.
     ```

3. AVD 虚拟机的建立
4. SDK Manager 太多坑 (不先说了)

## VsCode 配置

1. 安装 Flutter 插件
2. 创建项目
   - flutter create flutter_app_demo
   - 右下角: devices 选择虚拟设备并启动 (需要等待一段时间)
   - 运行项目: flutter run

## 开始上手 flutter

1. 升级 Flutter
   - flutter upgrade
   - 或者删除 sdk 包重新下载
2. StatefullWidger 和 StatelessWdiget 的区别

   - StatefullWidger 动态组件 (进度条等)
   - StatelessWdiget 文本框等 (多于动态组件)

3. VsCode 常用快捷键和热加载方法(在终端区域点击)
   - R: 点击后热加载, 直接查看预览效果
   - P: 在虚拟机中显示网络
   - O: 切换 android 和 IOS 的预览模式
   - Q: 退出预览调试模式

## flutter 一切皆组件

1. TextWidget

   - TextAlign: 文本对齐 (left, right, center)
   - maxLines: int 文本显示最大行数
   - overflow: TextOverflow.ellipsis 控制文本的溢出效果
   - style: TextStyle() fontSize, color, fontWeight

   ```dart
   Text(
      'Flutter SDK包括Flutter的引擎、框架、widgets、工具和Dart SDK。此示例需要v0.1.4或更高版本. VS Code: 右键单击并选择 Format Document. Terminal: 运行 flutter format <filename>.',
      textAlign: TextAlign.left,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,// clip切掉 ellipsis省略号 fade 超出部分渐变
      style: TextStyle(
      fontSize: 25.0,
      color: Color.fromARGB(255, 255, 150, 150),
      decoration: TextDecoration.underline,
      decorationStyle: TextDecorationStyle.solid,
      ),
   ),
   ```

2. ContainerWidget 相当于 div

   - Alignment
     - alignment: Alignment.bottomCenter || bottomLeft || topCenter,
   - 宽高颜色
     - color: Color.lightblue
     - width: 500.0
     - height: 400.0
   - Padding
     - EdgeInsets.all() 统一设置
     - EdgeInsets.fromLTRB(value1,value2,value3,value4);
   - Margin
   - decration 设置容器边框
     - BoxDecration Wideget
     - LinearGradient 设置背景渐变颜色

   ```dart
   Container(
    child: Text(
      'Hello Flutter',
      style: TextStyle(
        fontSize: 25.0,
        color: Colors.white,
        decoration: TextDecoration.underline,
        decorationStyle: TextDecorationStyle.solid,
      ),
    ),
    alignment: Alignment.topLeft,
    width: 500.0,
    height: 400.0,
    // color: Colors.lightBlue, // 背景色
    // padding: const EdgeInsets.all(20.0),
    padding: const EdgeInsets.fromLTRB(10.0, 30, 0.0, 0.0),
    margin: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        colors: [
          Colors.lightBlue,
          Colors.green,
          Colors.purple,
          Colors.red,
        ],
      ),
    ),
   ),
   ```

3. Image 图片组件的使用

   - Image Widget 引入形式
     - Image.assets 加载资源图片, 会使得打包时体积过大
     - Image.network 加载网络资源偏, 进场换的或者动态的图片
     - Image.file 本地图片, 比如相机照相后的图片预览等
     - Image.memory 加载到内存中的图片. Unit8List
   - Fit 属性详细
     - fit: BoxFit.fill, 充满容器
     - BoxFit.contain 保持比例, 一个方向填充, 可能有地方没有被填满
     - BoxFit.cover 保持原比例填充容器 而不被拉伸(可能会被裁切)
     - BoxFit.fitWidth 等比例调整,可能会被裁切
     - BoxFit.fitHeight 可能会被裁切
   - 图片的混合模式
     - color: Colors.green;
     - colorBlendMode: BlendMode.modulate;
   - repeat 属性图片重复
     - repeat: ImageRepeat.noRepeat | repeatX | repeatY | repeat

4. ListView 组件

   - ListView
   - ListTile 的使用
   - 制作横向列表 scrollDirection

     - Axis.horizontal 水平
     - Axis.vertical 水平

     ```
     children: <Widget>[
         new ListTile(
           leading: Icon(Icons.border_right),
           title: Text(wordPair.asPascalCase),
         ),
         new ListTile(
           leading: Icon(Icons.android),
           title: Text(wordPair.asPascalCase),
         ),
         Container(
           width: 180,
           color: Colors.lightBlue,
           child: Image.network(
             'http://img3.mukewang.com/szimg/5ac2dfe100014a9005400300.jpg',
           ),
         ),
         Container(
           width: 180,
           color: Colors.lightBlue,
           child: Image.network(
             'http://img2.mukewang.com/szimg/5b4bfb7000019d2e10800600.jpg',
           ),
         ),
         Container(
           width: 180,
           color: Colors.lightBlue,
           child: Image.network(
             'http://img2.mukewang.com/szimg/5a9ca4e80001786305400300.jpg',
           ),
         ),
       ],
     ```

5. 动态列表的渲染

   - Dart 中 list 的使用
   - 传递和接收参数, 实现动态列表的基础

6. GridView 的使用

   - GridView 网格列表的使用
     - padding 设置内边距的属性
     - crossAxisSpacing 网络间的空隙
     - crossAxisCount 网格的列数
   - 图片网络列表的使用

   ```
    child: GridView.count(
      padding: const EdgeInsets.all(10.0),
      crossAxisSpacing: 10,
      crossAxisCount: 3,
      children: <Widget>[
        const Text('JavaScript'),
        const Text('Nodejs'),
        const Text('React'),
        const Text('Flutter'),
        const Text('Dart'),
        const Text('Nginx'),
        const Text('Linux'),
        const Text('MongoDB'),
        const Text('Webpack'),
      ],
    )),
   ```

## 路由的使用

1. Navigator.push
2. Navigator.pop


    ```
    // MaterialApp下配置路由名称

    routes: {'/about': (context) => Page(title: 'About')},
    FlatButton(
      child: Text('About'),
      onPressed: () {
        Navigator.pushNamed(context, '/about');
      },
    ),
    ```
