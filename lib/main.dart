import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // ignore: non_constant_identifier_names
  Widget StackItems(Color clr, Icon icn, {String txt}) {
    return TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(Colors.white),
        backgroundColor: MaterialStateProperty.all(clr),
      ),
      onPressed: () {},
      child: HStack(
        [
          Text(
            "Developer",
            style: TextStyle(fontSize: 24),
          ),
          icn,
        ],
      ),
    ).p32();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: VStack(
            [
              Text(
                "VelocityX HStack()",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
              ).p16(),
              HStack([
                StackItems(
                  Colors.black,
                  Icon(Icons.device_hub),
                ),
                StackItems(
                  Colors.blue,
                  Icon(Icons.lightbulb),
                ),
                StackItems(
                  Colors.red,
                  Icon(Icons.face_unlock_outlined),
                ),
                StackItems(
                  Colors.cyan,
                  Icon(Icons.mobile_friendly),
                ),
                StackItems(
                  Colors.green,
                  Icon(Icons.laptop),
                ),
              ]).scrollHorizontal().p16(),
              Divider(
                thickness: 7,
                height: 10,
                color: Colors.black,
              ),
              Text(
                "VelocityX VStack()",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
              ).p16(),
              VStack(
                [
                  StackItems(
                    Colors.black,
                    Icon(Icons.device_hub),
                  ),
                  StackItems(
                    Colors.blue,
                    Icon(Icons.lightbulb),
                  ),
                  StackItems(
                    Colors.red,
                    Icon(Icons.face_unlock_outlined),
                  ),
                  StackItems(
                    Colors.cyan,
                    Icon(Icons.mobile_friendly),
                  ),
                  StackItems(
                    Colors.green,
                    Icon(Icons.laptop),
                  ),
                ],
                crossAlignment: CrossAxisAlignment.stretch,
              ),
              Divider(
                thickness: 7,
                height: 10,
                color: Colors.black,
              ),
              Text(
                "VelocityX ZStack()",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
              ).p16(),
              ZStack(
                [
                  VxBox()
                      .cyan500
                      .height(310.0)
                      .width(double.infinity)
                      .make()
                      .p12(),
                  VxBox()
                      .yellow500
                      .height(270.0)
                      .width(double.infinity)
                      .make()
                      .p32(),
                  StackItems(
                    Colors.black,
                    Icon(Icons.device_hub),
                  ),
                ],
                alignment: Alignment.center,
              ).p20(),
            ],
          ).scrollVertical(),
        ),
      ),
    );
  }
}
