import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          UserMetaData(),
          SizedBox(
            height: 14,
          ),
          PostBody(),
        ],
      ),
    );
  }
}

class UserMetaData extends StatelessWidget {
  const UserMetaData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 18,
          foregroundImage: NetworkImage(
              "https://scontent.ftun10-1.fna.fbcdn.net/v/t39.30808-6/288876910_1096257161234398_5119165061498363209_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=4wW55tHXFfsAX_hoK_-&_nc_ht=scontent.ftun10-1.fna&oh=00_AT_JADBW-gpicAVEKVLKbBhtNcbithu1ijlv9UAGXmhZxA&oe=62C63A8A"),
        ),
        SizedBox(
          width: 12,
        ),
        Column(
          children: [
            Text(
              'Hadil Hamza ',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black87),
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text(
                  'Just Now  ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: Colors.grey),
                ),
                SizedBox(
                  width: 3,
                ),
                Icon(
                  CupertinoIcons.globe,
                  size: 12,
                ),
              ],
            )
          ],
        ),
        Spacer(),
        IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.ellipsis))
      ],
    );
  }
}

class PostBody extends StatelessWidget {
  const PostBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
            child: Text(
                "المرضى _نحن_ تقتلنا الأشياء الباهتة و ترعبنا التفمعاذ جهاد Muath Jehadا حتما أن لا ينتبه أحدهم لذبول عينينا،ولإبتسامتنا الحزينة،نظراتنا الذابلة،طلاء أظافرنا المخدوش،وظفرنا المكسور،و حواجبنا الغير مرتبة،أشفارنا الغنجاء،عينانا الفاتنتان،قوامنا الريحاني المثير،شعاشيط شعرنا،شفاهنا المشققة،أنفنا البارز،حلوق أذننا،شعر يدينا،لمستنا الفاتنة للأشياء و طريقة نظرنا إليها،عفويتنا،صبيانيتنا المفرطة أحيانا،و أسلوب حديثنا،شكل أسناننا،طريقة همسنا ببنت شفة،وصراخنا المزعج،أنيننا المستمر،حنيننا المفرط للأشياء،نظرات حبنا و كرهنا،فرحنا و غضبنا،إنحنائات جسمنا،شداته،ترهلاته،أكثر قميص نرتديه،طريقة وضعنا لأحمر الشفاه،كحل العيوون،مورد الخدود،موسيقانا المفضلة،و أسلوبنا الأدبي الشيق،كاتبنا المفضل،بطل روايتنا،الشخص الذي نمقته،طريقة مشينا و جلوسنا،شعورنا بالوحدة وسط الإكتظاظ،آرائنا،أفكارنا،معتقداتنا،غبائنا،سذاجتنا و بلادتنايحز في نفسي جدا أن لا ينتبه أحدهم لهذه التفاصيل...Hadil❤😊")),
        SizedBox(
          height: 14,
        ),
        Container(
          height: 400,
          child: CircleAvatar(
            radius: 1000,
            foregroundImage: NetworkImage(
                "https://scontent.ftun10-1.fna.fbcdn.net/v/t39.30808-6/288876910_1096257161234398_5119165061498363209_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=4wW55tHXFfsAX_hoK_-&_nc_ht=scontent.ftun10-1.fna&oh=00_AT_JADBW-gpicAVEKVLKbBhtNcbithu1ijlv9UAGXmhZxA&oe=62C63A8A"),
          ),
        ),
      ],
    );
  }
}
