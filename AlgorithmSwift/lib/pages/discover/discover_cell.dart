import 'package:flutter/material.dart';
import 'package:wx_demo/pages/discover/discover_child_page.dart';

class DiscoverCell extends StatelessWidget {
  final String title;
  final String imageName;
  final String? subTitle;
  final String? subImageName;
  DiscoverCell({
    required this.title,
    required this.imageName,
    this.subTitle,
    this.subImageName,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (BuildContext context) =>
                  DiscoverChildPage(title: title)),
        );
      },
      child: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              height: 45,
              child: Row(
                children: [
                  Image.asset(
                    imageName,
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(title),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  this.subTitle != null ? Text(this.subTitle!) : Text(''),
                  this.subImageName != null
                      ? Image.asset(
                          this.subImageName!,
                          width: 20,
                          height: 20,
                        )
                      : Container(),
                  Image.asset(
                    'images/icon_right.png',
                    height: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
