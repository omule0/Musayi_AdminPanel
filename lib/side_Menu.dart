import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:panel/bloodbank_list.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Image.asset("assets/images/blood-drop.png"),
          ),
          DrawerListTile(
            title: "Blood Banks",
            svgSrc: "assets/icons/menu_dashbord.svg",
            press: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ListViewHome()));
            },
          ),
          DrawerListTile(
            title: "SetCampain",
            svgSrc: "assets/icons/menu_task.svg",
            press: () {
              Navigator.pop(context);
            },
          ),
          DrawerListTile(
            title: "Notifications",
            svgSrc: "assets/icons/menu_notification.svg",
            press: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.black,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
