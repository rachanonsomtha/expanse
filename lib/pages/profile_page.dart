import 'package:auto_size_text/auto_size_text.dart';
import 'package:expanse/statics/images.dart';
import 'package:expanse/utils/contextor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Profilepage extends StatefulWidget {
  @override
  _OtherpageState createState() => _OtherpageState();
}

class _OtherpageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Contextor.width(context),
      height: Contextor.height(context),
      color: Colors.grey[50],
      child: Stack(
        children: <Widget>[
          Container(
            width: Contextor.width(context),
            color: Colors.grey[50],
            child: Container(
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 50),
                    buildHealthCard(context),
                    buildCovidSection(context),
                    buildMyDataSection(context),
                    buildNeedHelpSection(context),
                    buildAboutAppSection(context),
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.0),
                  child: Text(
                    'ข้อมูลส่วนตัว',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    MdiIcons.dotsVertical,
                    color: Colors.blueAccent,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCovidSection(context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.grey[50],
          child: ListTile(
            dense: true,
            title: Text(
              'Profile',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
        ),
        Divider(height: 0),
        Container(
          color: Colors.white,
          child: ListTile(
            title: Text('Edit Profile'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
        ),
        Divider(height: 0),
        Container(
          color: Colors.white,
          child: ListTile(
            title: Text('Rewards'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
        ),
        Divider(height: 0),
      ],
    );
  }

  Widget buildNeedHelpSection(context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.grey[50],
          child: ListTile(
            dense: true,
            title: Text(
              'ขอความช่วยเหลือ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
        ),
        Divider(height: 0),
        Container(
          color: Colors.white,
          child: ListTile(
            enabled: false,
            title: Text('Call center: 091-076-1162'),
          ),
        ),
        Divider(height: 0),
      ],
    );
  }

  Widget buildMyDataSection(context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.grey[50],
          child: ListTile(
            dense: true,
            title: Text(
              'ข้อมูลของฉัน',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
        ),
        Divider(height: 0),
        Container(
          color: Colors.white,
          child: ListTile(
            title: Text('ประวัติการใช้งาน'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
        ),
        Divider(height: 0),
      ],
    );
  }

  Widget buildAboutAppSection(context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.grey[50],
          child: ListTile(
            dense: true,
            title: Text(
              'แอพพลิเคชั่น Hiw-MorChor',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
        ),
        Divider(height: 0),
        Container(
          color: Colors.white,
          child: ListTile(
            title: Text('เกี่ยวกับแอพ'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
        ),
        Divider(height: 0),
        Container(
          color: Colors.white,
          child: ListTile(
            title: Text('แจ้งปัญหา'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
        ),
        Divider(height: 0),
        Container(
          color: Colors.white,
          child: ListTile(
            title: Text('ติดต่อสอบถาม'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
        ),
        Divider(height: 0),
        Container(
          color: Colors.white,
          child: ListTile(
            title: Text('ออกจากระบบ'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
        ),
        Divider(height: 0),
      ],
    );
  }

  Container buildHealthCard(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Container(
        height: 200,
        width: Contextor.width(context),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.greenAccent,
                Colors.green,
              ]),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: CircleAvatar(
                    backgroundImage:
                        CachedNetworkImageProvider(AppImages.avatarImgUrl),
                    radius: 40,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Username',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
