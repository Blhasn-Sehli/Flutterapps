import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

int _currentindex = 0;

List<String> _tabs = ['Home', 'Favorites', 'Recent'];

class HomeTabs extends StatefulWidget {
  const HomeTabs({Key? key}) : super(key: key);

  @override
  State<HomeTabs> createState() => _HomeTabsState();
}

class _HomeTabsState extends State<HomeTabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.grey,
      height: 50,
      width: double.maxFinite,
      child: Row(
        children: [
          ListView.builder(
              itemCount: _tabs.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: ((context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      _currentindex = index;
                    });
                  },
                  child: CustomTab(
                      currentindex: _currentindex,
                      index: index,
                      tabtitles: _tabs[index]),
                );
              })),
          Spacer(),
          IconButton(
              onPressed: (() {}),
              icon: Icon(
                CupertinoIcons.slider_horizontal_3,
                color: Colors.black87,
              ))
        ],
      ),
    );
  }
}

class CustomTab extends StatefulWidget {
  final int currentindex;
  final int index;
  final String tabtitles;
  const CustomTab(
      {Key? key,
      required this.currentindex,
      required this.index,
      required this.tabtitles})
      : super(key: key);

  @override
  State<CustomTab> createState() => _CustomTabState();
}

class _CustomTabState extends State<CustomTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.tabtitles,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: widget.currentindex == widget.index
                  ? Colors.blue
                  : Colors.grey.shade400),
        ),
        SizedBox(
          height: 7,
        ),
        Container(
          height: 4,
          width: 80,
          color: widget.currentindex == widget.index
              ? Colors.blue
              : Colors.transparent,
        ),
      ],
    );
  }
}
