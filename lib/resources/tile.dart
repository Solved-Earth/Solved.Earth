import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const Tile({
    required this.icon,
    required this.color,
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Icon(
          icon,
          color: color,
        ),
      ),
      title: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 17,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_outlined,
        color: Colors.black,
        size: 20,
      ),
    );
  }
}
