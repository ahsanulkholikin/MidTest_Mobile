import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'Logo',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 32.0,
        child: Image.asset('assets/logo.png'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Username',
        prefixIcon: Padding(
          padding: EdgeInsets.fromLTRB(5.0, 0.0, 20.0, 15.0),
          child: Icon(Icons.email),
        ),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        prefixIcon: Padding(
          padding: EdgeInsets.fromLTRB(5.0, 0.0, 20.0, 15.0),
          child: Icon(Icons.vpn_key),
        ),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 50.0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              side: BorderSide(color: Colors.red)),
          onPressed: () {
            Navigator.of(context).pushNamed(HomePage.tag);
          },
          color: Colors.red[400],
          child: Text('LOGIN', style: TextStyle(color: Colors.white54)),
        ),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    final orLabel = Container(
      alignment: AlignmentDirectional.center,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black54),
          borderRadius: BorderRadius.all(Radius.circular(100.0))),
      child: Text("OR"),
    );

    // final registerLabel = Container(
    //   alignment: AlignmentDirectional.center,
    //   child: Text("New User? Register Here"),
    // );
    final registerLabel = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("New User?"),
        new InkWell(
          onTap: () {
            Navigator.pushNamed(context, "YourRoute");
          },
          child: Text(
            " Register",
            style: TextStyle(color: Colors.red[400]),
          ),
        ),
        Text(" Here")
      ],
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 12.0),
            Container(
              child: forgotLabel,
              alignment: AlignmentDirectional.centerEnd,
            ),
            loginButton,
            SizedBox(height: 8.0),
            orLabel,
            SizedBox(height: 24.0),
            registerLabel,
          ],
        ),
      ),
    );
  }
}
