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
        radius: 60.0,
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

    final orLabel_ = Container(
      height: 40,
      width: 100,
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        border: new Border.all(
          color: Colors.black26,
          width: 2,
        ),
      ),
      child: new Center(
        child: new Text(
          "OR",
          style: Theme.of(context).textTheme.body1.apply(color: Colors.black54),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          // padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              child: logo,
            ),
            // logo,
            SizedBox(height: 48.0),
            Padding(
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              child: email,
            ),
            SizedBox(height: 8.0),
            Padding(
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              child: password,
            ),

            SizedBox(height: 12.0),
            Padding(
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              child: Container(
                child: forgotLabel,
                alignment: AlignmentDirectional.centerEnd,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              child: loginButton,
            ),

            SizedBox(height: 5.0),
            orLabel_,

            SizedBox(height: 15.0),
            registerLabel,
          ],
        ),
      ),
    );
  }
}
