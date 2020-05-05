import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:expanse/utils/contextor.dart';
import 'package:expanse/widgets/rounded_box_shadow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ImageCard extends StatelessWidget {
  ImageCard({
    Key key,
    this.margin: const EdgeInsets.all(2.0),
    this.width,
    this.height,
    this.radius,
    this.label,
    this.image,
    this.onClick,
  }) : super(key: key);

  final EdgeInsets margin;
  final double width;
  final double height;
  final String label;
  final String image;
  final double radius;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return RoundedBoxShadow(
      radius: radius ?? 3.0,
      margin: margin,
      padding: EdgeInsets.zero,
      shadowRadius: 2,
      shadowDistance: 3,
      onClick: onClick ??
          () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TempImagePage(
                          image: image,
                        )));
          },
      child: Container(
        width: width ?? Contextor.width(context),
        height: height ?? Contextor.height(context),
        child: ClipRRect(
          borderRadius: new BorderRadius.circular(radius ?? 3.0),
          child: Stack(
            children: <Widget>[
              Container(
                width: width ?? Contextor.width(context),
                height: height ?? Contextor.height(context),
                child: CachedNetworkImage(
                  imageUrl: image,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Center(
                    child: CircularProgressIndicator(),
                  ),
                  errorWidget: (context, url, error) => new Icon(Icons.error),
                ),
              ),
              label != null
                  ? Container(
                      width: width ?? Contextor.width(context),
                      height: height ?? Contextor.height(context),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color.fromRGBO(0, 0, 0, 0.0),
                              Color.fromRGBO(0, 0, 0, 0.8)
                            ]),
                      ),
                    )
                  : Container(),
              label != null
                  ? Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: AutoSizeText(
                          label,
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                        ),
                      ))
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}

class TempImagePage extends StatelessWidget {
  TempImagePage({Key key, @required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'รูปภาพ',
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.0),
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
