// ignore_for_file: unnecessary_const, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodapplication/Services/loginApi.dart';

// ignore: must_be_immutable
class DrawerW extends StatefulWidget {
  String email;
  DrawerW({super.key, this.email = ''});

  @override
  State<DrawerW> createState() => _DrawerWState();
}

class _DrawerWState extends State<DrawerW> {
  @override
  Widget build(BuildContext context) {
    LoginApi loginApi = LoginApi();
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                decoration: const BoxDecoration(color: Colors.orange),
                // currentAccountPicture: const CircleAvatar(),
                accountName: Text(
                  /*  LoginApi.Login(username, password).toString(), */
                  '',
                  style:
                      TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                ),
                accountEmail: Text(widget.email)),
            const ListTile(
              leading: Icon(Icons.dashboard),
              title: Text("DashBoard"),
            ),
            const ListTile(
              leading: Icon(Icons.offline_pin),
              title: Text("Punch Order"),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                thickness: 1,
              ),
            ),
            const ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
