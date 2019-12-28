import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carros"),
        centerTitle: true,
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: <Widget>[
          _text("Login", "Digite o Login"),
          SizedBox(
            height: 10,
          ),
          _text("Senha", "Digite a Senha", password: true),
          SizedBox(
            height: 20,
          ),
          _button("Login")
        ],
      ),
    );
  }

  Container _button(String text) {
    return Container(
      height: 46,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
        onPressed: () {},
      ),
    );
  }

  TextFormField _text(String label, String hint, {bool password = false}) {
    return TextFormField(
      obscureText: password,
      decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(fontSize: 25, color: Colors.grey),
          hintText: hint,
          hintStyle: TextStyle(fontSize: 16)),
    );
  }
}
