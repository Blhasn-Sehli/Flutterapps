import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

TextEditingController _postcntrl = TextEditingController();

class AddPost extends StatelessWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 22,
                foregroundImage: NetworkImage(
                    "https://scontent.ftun9-1.fna.fbcdn.net/v/t39.30808-6/279110678_3281643845492149_6736560357458620547_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=AToO-QOZuZkAX-vxaFv&_nc_ht=scontent.ftun9-1.fna&oh=00_AT8IKU9nmiiCHOcWmfqmb5ZhPDICnMvAmOtWANqu67UMGA&oe=62C6C224"),
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: TextField(
                  decoration:
                      InputDecoration(hintText: "What's on your mind ?"),
                  controller: _postcntrl,
                ),
              ),
            ],
          ), // l taswira w l ktiba eli gdemou
          SizedBox(
            height: 12,
          ),
          Container(
            height: 28,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.video_camera_solid,
                          color: Colors.black87,
                          size: 32,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'Live',
                          style: TextStyle(color: Colors.black87),
                        )
                      ],
                    )),
                Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.photo_fill_on_rectangle_fill,
                          color: Colors.black87,
                          size: 25,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'Photos',
                          style: TextStyle(color: Colors.black87),
                        )
                      ],
                    )),
                Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.chat_bubble_fill,
                          color: Colors.black87,
                          size: 25,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'Discuss',
                          style: TextStyle(color: Colors.black87),
                        )
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
