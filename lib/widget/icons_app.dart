import 'package:flutter/material.dart';

class ReusableIcon extends StatefulWidget {
  final IconData icon;
  final Color color;


  ReusableIcon({
    super.key,
    required this.icon,
    this.color = Colors.white,

  });
  @override
  State<ReusableIcon> createState() => _ReusableIconState();
}

class _ReusableIconState extends State<ReusableIcon> {
  @override
  Widget build(BuildContext context) {
    bool selected = true;
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: selected == true ? Colors.grey[400] : Colors.black,
        borderRadius: BorderRadius.circular(12),
      ),
      child: IconButton(
        splashRadius: double.minPositive,
        icon: Icon(widget.icon),
        color: widget.color,
        onPressed: () {
          selected = false;
          setState(() {});
        },
      ),
    );
  }
}
