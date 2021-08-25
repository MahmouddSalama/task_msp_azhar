import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: Color(0xffFFCCBB),
      body: SafeArea(child: buildCenterBody(size)),
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: [
              buildHeaderDrawer(size),
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  buildListTile('Home', Icons.home),
                  buildListTile('About', Icons.account_box_outlined),
                  buildListTile('Settings', Icons.settings),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  ListTile buildListTile(text, icon) {
    return ListTile(
      onTap: (){},
      title: Text(
        text,
        style: TextStyle(fontSize: 20),
      ),
      leading: Icon(
        icon,
        size: 30,
        color: Color(0xffFE5722),
      ),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }

  Container buildHeaderDrawer(Size size) {
    return Container(
      padding: EdgeInsets.only(left: 18, top: 20, bottom: 7),
      color: Color(0xffFE5722),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildCircleAvatar(size.height * .07),
          SizedBox(height: 12),
          Text(
            "Mahmoud Salama",
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            "Mahmoud@gmail.com",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Center buildCenterBody(Size size) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: size.height * .1,
          ),
          buildCircleAvatar(size.height * .16),
          SizedBox(height: 35),
          buildText('Name : Mahmoud Salama Mohamed AbdelRahman'),
          SizedBox(height: 25),
          buildText('Email : mahmoud@gmail.com'),
        ],
      ),
    );
  }

  CircleAvatar buildCircleAvatar(size) {
    return CircleAvatar(
      backgroundImage: AssetImage("images/profile.png"),
      radius: size,
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xffFE5722),
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Profile',
        style: TextStyle(
            fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Text buildText(text) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 15,
      ),
    );
  }
}
