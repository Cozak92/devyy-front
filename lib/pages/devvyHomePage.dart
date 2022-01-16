import 'package:devyy_front/pages/emailLoginPage.dart';
import 'package:flutter/material.dart';

class DevvyHomePage extends StatefulWidget {
  const DevvyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<DevvyHomePage> createState() => _DevvyHomePageState();
}

class _DevvyHomePageState extends State<DevvyHomePage> {
  @override
  Widget build(BuildContext context) {
    ButtonStyle outlineLoginButtonStyle = OutlinedButton.styleFrom(
      primary: Colors.black87,
      minimumSize: const Size(500, 36),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    );

    const paddingSize = EdgeInsets.all(8.0);
    const icon = Icon(Icons.add, size: 18);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: paddingSize,
              child: OutlinedButton.icon(
                onPressed: () {
                  // Spring boot 서버로 github 연동
                },
                style: outlineLoginButtonStyle,
                icon: icon,
                label: const Text("Login via Github"),
              ),
            ),
            Padding(
              padding: paddingSize,
              child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const EmailLoingPage())
                  );
                },
                style: outlineLoginButtonStyle,
                icon: icon,
                label: const Text("Login via E-mail"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/* 버튼 수 가 많아지면 리스트로 버튼 만들기 */
// List<String> loginList = [
//   "Login via Github",
//   "Login via Google",
//   "Login via E-mail",
// ];
//
// List<Widget> _LoginButtons() {
//   List<OutlinedButton> buttonsList = List<OutlinedButton>();
//   loginList.map((e) => buttonsList.add(OutlinedButton(label : text(e))))
// }
