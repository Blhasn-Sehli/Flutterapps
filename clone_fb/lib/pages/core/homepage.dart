import 'package:clone_fb/widgets/add_post.dart';
import 'package:clone_fb/widgets/custom_header.dart';
import 'package:clone_fb/widgets/home_tabs.dart';
import 'package:clone_fb/widgets/post_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //header
              Header(),
              //custom tabs
              HomeTabs(),
              //add a post
              AddPost(),
              //Stories view
              //Posts list
              ListView.builder(
                  itemCount: 17,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: ((context, index) {
                    return PostWidget();
                  }))
            ],
          ),
        ),
      ),
    );
  }
}
