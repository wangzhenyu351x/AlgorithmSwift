import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  @override
  State<MinePage> createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(),
          Container(
            child: Image.asset('images/相机.png'),
          ),
        ],
      ),
    );
  }
}
