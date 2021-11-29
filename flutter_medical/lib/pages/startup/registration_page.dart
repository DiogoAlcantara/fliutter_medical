import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_medical/constants/constant.dart';
import 'package:flutter_medical/model/user_model.dart';
import 'package:flutter_medical/pages/startup/login_page.dart';
import 'package:flutter_medical/values/preferences_keys.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController _nameInputController = TextEditingController();
  TextEditingController _mailInputController = TextEditingController();
  TextEditingController _passwordInputController = TextEditingController();
  TextEditingController _confirmInputController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(
          top: 30,
          left: 40,
          right: 40,
        ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 200,
              width: 200,
              child: Image.asset('assets/images/registration_new.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _nameInputController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Campo obrigatório";
                      } else if (value.length < 10) {
                        return "O campo nome de ter ao menos 10 caracteres";
                      }
                      return null;
                    },
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: mTitleTextColor,
                      ),
                      labelText: "Nome",
                      labelStyle: TextStyle(
                        color: mTitleTextColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _mailInputController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Campo obrigatório";
                      } else if (value.length < 5) {
                        return "Email curto demais";
                      } else if (!value.contains("@")) {
                        return "Faltou o @";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: mTitleTextColor,
                      ),
                      labelText: "Email",
                      labelStyle: TextStyle(
                        color: mTitleTextColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _passwordInputController,
                    validator: (value) {
                      if (value.length < 6) {
                        return "A senha deve conter ao menos 6 caracteres";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
                    obscureText: (this.showPassword == true) ? false : true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.vpn_key,
                        color: mTitleTextColor,
                      ),
                      labelText: "Senha",
                      labelStyle: TextStyle(
                        color: mTitleTextColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    controller: _confirmInputController,
                    validator: (value) {
                      if (value.length < 6) {
                        return "A senha deve conter ao menos 6 caracteres";
                      }
                      return null;
                    },
                    obscureText: (this.showPassword == true) ? false : true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.vpn_key,
                        color: mTitleTextColor,
                      ),
                      labelText: "Confirme sua senha",
                      labelStyle: TextStyle(
                        color: mTitleTextColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Checkbox(
                  value: this.showPassword,
                  onChanged: (bool newValue) {
                    setState(
                      () {
                        this.showPassword = newValue;
                      },
                    );
                  },
                ),
                Text(
                  'Mostrar senha',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: mTitleTextColor,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [mButtonColor, mPrimaryTextColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: SizedBox.expand(
                child: ElevatedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Cadastre-se',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  onPressed: () {
                    _doSignUp();
                  },
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [mBackgroundColor, mSecondBackgroundColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }

  void _doSignUp() async {
    if (_formKey.currentState.validate()) {
      print("Usuário cadastrado com sucesso!");
    } else {
      print("Erro");
    }
  }
}
