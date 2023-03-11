// ignore_for_file: file_names, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  String? id;
  String? time;

  CustomContainer({
    super.key,
    this.id,
    this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          // width: width.w,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey, blurRadius: 2, offset: Offset(-1, 1))
            ],
            color: Color.fromARGB(255, 248, 221, 180),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)),
          ),
          child: Column(children: [
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    "Order ID:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.sp,
                        decoration: TextDecoration.underline),
                  ),
                  Text(
                    id ?? "",
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      "Time:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17.sp,
                          decoration: TextDecoration.underline),
                    ),
                    Text(
                      time.toString(),
                      style: TextStyle(
                        fontSize: 16.sp,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Order Type",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.sp,
                  decoration: TextDecoration.underline),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                width: 80.w,
                child: Table(
                  border: TableBorder.all(color: Colors.orange),
                  children: [
                    const TableRow(children: [
                      Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            "Tikka",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            "2",
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            "Kabab",
                            style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            "12",
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 50.h,
              width: 90.h,
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2,
                        offset: Offset(-1, 1))
                  ],
                  color: const Color.fromARGB(255, 244, 157, 26),
                  borderRadius: BorderRadius.circular(20)),
              child: const Center(
                  child: Text(
                "OK",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            ),
            SizedBox(
              height: 20.h,
            ),
          ])),
    );
  }
}
