import 'package:flutter/material.dart';

class CircleLoginButtonViewWidget extends StatelessWidget {
  final String path;
  final VoidCallback onTap;
  const CircleLoginButtonViewWidget({required this.path, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5.0,
        shape: CircleBorder(),
        clipBehavior: Clip.antiAlias,
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Ink.image(
              width: 70,
              height: 70,
              image: AssetImage('assets/images/$path.png'),
              fit: BoxFit.cover,
              child: InkWell(onTap: onTap)
          ),
        )
    );
  }
}