import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    this.iconData,
    this.onPressed,
  });
  final IconData? iconData;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(13)),
        color: Color(0xFF3a3b3a),
      ),
      child: IconButton(
        icon: Icon(iconData),
        iconSize: 28,
        onPressed: onPressed,
      ),
    );
  }
}
