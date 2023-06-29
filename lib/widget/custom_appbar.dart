import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(Icons.search_rounded),
          SizedBox(width: 5),
          Text('Search',style: TextStyle(color: Colors.grey.shade700,fontSize: 16),)
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(56);
}
