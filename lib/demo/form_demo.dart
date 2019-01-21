import "package:flutter/material.dart";

class FormDemo extends StatelessWidget {
  final String title;

  FormDemo({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        // 全部覆盖父级
        // data: ThemeData(
        //   primaryColor: Colors.black54,
        // ),
        // 只覆盖部分
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black,
        ),
        child: ThemeDemo(),
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // 定义的应用的主题
      // color: Theme.of(context).accentColor,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RegisterForm(),
          ],
        ),
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    // 用完之后需要销毁, 节省内存
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    textEditingController.text = 'hi';
    textEditingController.addListener(() {
      debugPrint('initState: ${textEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        // 用控制器控制TextFiled的变化和初始值设置
        controller: textEditingController,
        // onChanged: (value) {
        //   debugPrint('onChanged: $value');
        // },
        onSubmitted: (value) {
          debugPrint('onSubmitted: $value');
        },
        decoration: InputDecoration(
          icon: Icon(Icons.subject),
          labelText: 'Title',
          hintText: 'Enter the post title',
          // border: InputBorder.none,
          border: OutlineInputBorder(),
          // 文本框添加黑色的背景
          filled: true,
          // fillColor: Colors.grey,
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registerFormKey = GlobalKey<FormState>();

  String username, password;

  // 表单的自动校验功能
  bool autovalidate = false;

  void _submitRegisterForm() {
    // 调用各个字段的校验器
    if (registerFormKey.currentState.validate()) {
      // 保存表单中填充的数据
      registerFormKey.currentState.save();
      debugPrint('username: $username, passowrd: $password');

      // 找到最近的scaffold
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text('Registering ....'),
      ));
    } else {
      setState(() {
        autovalidate = true;
      });
    }
  }

  String _validateUser(String value) {
    if (value.isEmpty) {
      return '用户名不能为空';
    }
    return null;
  }

  String _validatePassword(String value) {
    if (value.isEmpty) {
      return '密码不能为空';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        // 表示获取的表单值填充在该对象中
        key: registerFormKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'UserName',
                helperText: '',
              ),
              // 保存表单数据的时候, 将当前值填充到username中
              onSaved: (value) {
                username = value;
              },
              validator: _validateUser,
              autovalidate: autovalidate,
            ),
            TextFormField(
              // 隐藏表单内容
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                helperText: '',
              ),
              // 保存表单数据的时候, 将当前值填充到username中
              onSaved: (value) {
                password = value;
              },
              validator: _validatePassword,
              // 表单自动校验
              autovalidate: autovalidate,
            ),
            SizedBox(
              height: 32.0,
            ),
            Container(
              width: double.infinity,
              child: RaisedButton(
                color: Color.fromRGBO(76, 182, 172, 1.0),
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                elevation: 0.0,
                onPressed: _submitRegisterForm,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
