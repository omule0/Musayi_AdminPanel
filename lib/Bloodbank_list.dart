import 'package:flutter/material.dart';

class ListViewHome extends StatelessWidget {
  final titles = [
    " Nakasero Blood Bank",
    "Arua Regional Blood Bank",
    "Gulu Regional Blood Bank",
    "Fort Portal Regional Blood Bank",
    "Lira Regional Blood Bank",
    "Masaka Regional Blood Bank",
    "Mbale Regional Blood Bank",
    "Mbarara Regional Blood Bank"
  ];
  final subtitles = [
    "Nakasero",
    "Arua Regional Referral Hospital",
    "Gulu Regional Referral Hospital",
    "Fort Portal Regional Referral Hospital",
    "Lira Regional Referral Hospital",
    "Masaka Hospital",
    "Mbale Hospital",
    "Mbarara Regional Referral Hospital"
  ];
  final icons = [
    Icons.local_hospital,
    Icons.local_hospital,
    Icons.local_hospital,
    Icons.local_hospital,
    Icons.local_hospital,
    Icons.local_hospital,
    Icons.local_hospital,
    Icons.local_hospital,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blood Banks"),
      ),
      body: ListView.builder(
          itemCount: titles.length,
          itemBuilder: (context, index) {
            return Card(
                child: ListTile(
                    onTap: () {
                      /*Navigator.of(context).push(MaterialPageRoute(builder: (context)=>to retern stats));*/
                    },
                    title: Text(titles[index]),
                    subtitle: Text(subtitles[index]),
                    leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://th.bing.com/th/id/OIP.zKybhjKaF5vPf5qDP46xJwHaFX?pid=ImgDet&rs=1")),
                    trailing: Icon(icons[index])));
          }),
    );
  }
}
