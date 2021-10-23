import 'package:flutter/material.dart';

class MyTopBar extends StatelessWidget {
  const MyTopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
        ),
        Expanded(
          child: Center(
            child: Text(
              'Search Product',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
        Container(
          height: 40,
          width: 40,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image.asset(
            'assets/imgs/me.jpg',
            fit: BoxFit.cover,
          ),
        )
      ],
    ));
  }
}
