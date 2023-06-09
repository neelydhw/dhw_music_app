import 'package:dhw_music_app/theme.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginFormState();
  }
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 35, top: 42, right: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "登录",
            style: TextStyle(
                fontSize: 24,
                color: Color(0xFF002251),
                letterSpacing: 0,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 7,
          ),
          const Text(
            "欢迎来到胖丁音乐",
            style: TextStyle(
                fontSize: 14,
                color: Color(0xFF7A869A),
                letterSpacing: 0,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 35,
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: '请输入用户名/手机号',
              labelText: '用户名/手机号',
            ),
            onSaved: (String? value) {
            },
            validator: (String? value) {
              return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
            },
          ),
          const SizedBox(
            height: 25,
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: '请输入密码',
              labelText: '密码',
            ),
            onSaved: (String? value) {
            },
            validator: (String? value) {
              return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
            },
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            "忘记密码？",
            style: TextStyle(
                fontSize: 13,
                color: Color(0xFF0041C4),
                letterSpacing: 0,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 24,
          ),
          SizedBox(
            height: 44,
            child: FractionallySizedBox(
              widthFactor: 1,
              child: ElevatedButton(onPressed: (){}, child:const Text("登录")),
            ),
          ),
          const SizedBox(
            height: 129,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget> [
              Text("没有账号？",style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF7A869A),
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400),
              ),
              Text("立即注册",style: TextStyle(
                  fontSize: 14,
                  color: primary,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400),
              )
            ],
          )
        ],
      ),
    );
  }
}
