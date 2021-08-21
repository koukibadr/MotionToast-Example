import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: MotionToastExample(),
      ),
    );
  }
}

class MotionToastExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Motion toast examples"),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                MotionToast.success(
                  description: "Your data has been updated",
                  borderRadius: 5,
                  title: "User Update",
                  titleStyle: TextStyle(fontWeight: FontWeight.bold),
                  iconType: ICON_TYPE.CUPERTINO,
                ).show(context);
              },
              child: Text("Success motion toast")),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                MotionToast.error(
                  description: "Your data has been deleted",
                  borderRadius: 5,
                  title: "User Update",
                  titleStyle: TextStyle(fontWeight: FontWeight.bold),
                  iconType: ICON_TYPE.CUPERTINO,
                ).show(context);
              },
              child: Text("Error motion toast")),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                MotionToast.info(
                  description: "Your data has been deleted",
                  borderRadius: 5,
                  title: "User Update",
                  titleStyle: TextStyle(fontWeight: FontWeight.bold),
                  iconType: ICON_TYPE.CUPERTINO,
                ).show(context);
              },
              child: Text("Info motion toast")),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                MotionToast.warning(
                  description: "Your data has been deleted",
                  borderRadius: 5,
                  title: "User Update",
                  titleStyle: TextStyle(fontWeight: FontWeight.bold),
                  iconType: ICON_TYPE.CUPERTINO,
                ).show(context);
              },
              child: Text("Warning motion toast")),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                MotionToast.delete(
                  description: "Your data has been deleted",
                  borderRadius: 5,
                  title: "User Update",
                  titleStyle: TextStyle(fontWeight: FontWeight.bold),
                  iconType: ICON_TYPE.CUPERTINO,
                ).show(context);
              },
              child: Text("Delete motion toast")),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                MotionToast(
                        icon: Icons.verified_user_outlined,
                        description: "Your account has been created",
                        color: Colors.orange)
                    .show(context);
              },
              child: Text("Custom motion toast")),
        ],
      ),
    );
  }
}
