import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Hi Let's Create An Acount",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              Expanded(
                  child: TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    labelText: 'Type Your Full Name Here ',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              )),
              const SizedBox(
                width: 30,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              Expanded(
                  child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: 'example@gmail.com',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              )),
              const SizedBox(
                width: 30,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              Expanded(
                  child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Cin Number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              )),
              const SizedBox(
                width: 30,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              Expanded(
                  child: TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              )),
              const SizedBox(
                width: 30,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              Expanded(
                  child: TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              )),
              const SizedBox(
                width: 30,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              Expanded(
                  child: TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    labelText: ' Confirm Your Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              )),
              const SizedBox(
                width: 30,
              ),
            ],
          ),
        ],
      )),
    );
  }
}
