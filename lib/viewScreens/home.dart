import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/customContainer.dart';
import '../widgets/drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerW(),
        appBar: AppBar(
          // toolbarHeight: 70,
          backgroundColor: Colors.orange,
          centerTitle: true,
          title: const Text("ORDERS"),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 10.h,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomContainer(),
                  CustomContainer(),
                  CustomContainer(),
                  CustomContainer(),
                  CustomContainer(),
                  CustomContainer(),
                ],
              ),
            ),
          ]),
        ));
  }
}
