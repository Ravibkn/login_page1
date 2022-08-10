import 'package:flutter/material.dart';

class MenuItems extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function() onTap;
  const MenuItems(
      {Key? key, required this.icon, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Icon(
              icon,
              size: 22,
              color: Theme.of(context).primaryColor,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
