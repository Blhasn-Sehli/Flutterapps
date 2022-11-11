import 'package:clone_fb/pages/auth/pass_rest/email_verif.dart';
import 'package:clone_fb/pages/core/homepage.dart';
import 'package:clone_fb/utiles/app_strings.dart';
import 'package:clone_fb/utiles/app_styles.dart';
import 'package:clone_fb/utiles/dims.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

TextEditingController _emailcntrl = TextEditingController();
TextEditingController _passcntrl = TextEditingController();
bool _isPassVisible = false;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Container(
        margin: AppDims.globalmargin,
        child: Column(
          children: [
            const SizedBox(
              height: 64,
            ),
            Row(
              children: [
                Text(
                  AppStrings.LoginPageSignIN,
                  style: AppStyles.authtileStyle,
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            TextField(
              controller: _emailcntrl,
              decoration: InputDecoration(
                  prefixIcon: Icon(CupertinoIcons.mail_solid),
                  hintText: 'Téléphone ou e-mail '),
            ),
            const SizedBox(
              height: 24,
            ),
            TextField(
              obscureText: _isPassVisible,
              controller: _passcntrl,
              decoration: InputDecoration(
                  suffix: TextButton(
                      onPressed: () {
                        setState(() {
                          _isPassVisible = !_isPassVisible;
                        });
                      },
                      child: Text(_isPassVisible ? 'Show' : 'Hide')),
                  prefixIcon: Icon(_isPassVisible
                      ? CupertinoIcons.lock_fill
                      : CupertinoIcons.lock_open_fill),
                  hintText: 'Mot de passe '),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Expanded(
                    child: CupertinoButton(
                        color: Colors.blue,
                        child: Text('Log In'),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              CupertinoPageRoute(
                                  builder: ((context) => Homepage())));
                        })),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) => EmailVerif()));
                });
              },
              child: Text('Forgotten Password ?',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 17,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      )),
    );
  }
}
