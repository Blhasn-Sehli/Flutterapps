import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.grey.shade300,
      margin: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'facebook',
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 27),
          ),
          Spacer(),
          CircleAvatar(
            backgroundColor: Colors.grey.shade200,
            radius: 18,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.search,
                  color: Colors.black87,
                )),
          ),
          const SizedBox(
            width: 6,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey.shade200,
            radius: 18,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.chat_bubble_2_fill,
                  color: Colors.black87,
                )),
          ),
        ],
      ),
    );
  }
}
