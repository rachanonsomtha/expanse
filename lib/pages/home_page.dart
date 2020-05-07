import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:expanse/statics/images.dart';
import 'package:expanse/utils/contextor.dart';
import 'package:expanse/widgets/image_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  static String route = "/home";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String route = HomePage.route;
  List newsList = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          buildBannerSection(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 4.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 12),
                buildBasicInfoSection(),
                SizedBox(height: 12),
                buildResourcesSection(),
                SizedBox(height: 12),
                buildNewsFeedSection(),
                SizedBox(height: 12),
                buildEmergencySection(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildBannerSection() {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            width: Contextor.width(context),
            height: 150,
            child: CachedNetworkImage(
              imageUrl: AppImages.tempImgUrl,
              fit: BoxFit.cover,
              placeholder: (context, url) => Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBasicInfoSection() {
    return Container(
      width: Contextor.width(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Text(
              'ทั่วไป',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0),
            child: ImageCard(
              width: Contextor.width(context),
              height: 100,
              image: AppImages.tempImgUrl,
              label: 'รับหิ้ว',
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0),
            child: ImageCard(
              width: Contextor.width(context),
              height: 100,
              image: AppImages.tempImgUrl,
              label: 'พรีออเดอร์',
            ),
          ),
        ],
      ),
    );
  }

  Widget buildResourcesSection() {
    return Container(
      width: Contextor.width(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Text(
              'ข่าวสารต่าง ๆ',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0),
            child: ImageCard(
              width: Contextor.width(context),
              height: 100,
              image: AppImages.tempImgUrl,
              label: 'Resource 1',
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0),
            child: ImageCard(
              width: Contextor.width(context),
              height: 100,
              image: AppImages.tempImgUrl,
              label: 'Resource 2',
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNewsFeedSection() {
    return Container(
      width: Contextor.width(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Text(
              'แจ้งเตือนจากระบบ',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ...newsList.map((news) {
            return Column(
              children: <Widget>[
                ListTile(
                  title: Text('ชื่อข่าว'),
                  leading: Icon(Icons.notifications_none),
                  subtitle: Text('เนื้อหาข่าว'),
                  trailing: Icon(Icons.arrow_right),
                  dense: true,
                  onTap: () {},
                ),
                Divider(height: 0),
              ],
            );
          }).toList()
        ],
      ),
    );
  }

  Widget buildEmergencySection() {
    return Container(
      width: Contextor.width(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Text(
              'เหตุฉุกเฉิน',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0),
            child: ImageCard(
              width: Contextor.width(context),
              height: 200,
              image: AppImages.tempImgUrl,
              label: 'Emergency',
            ),
          ),
        ],
      ),
    );
  }
}
