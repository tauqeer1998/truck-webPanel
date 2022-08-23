import 'package:flutter/cupertino.dart';

class DashboardScreen extends StatefulWidget {
  static const String id= "dashboard_screen";

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("YOur DashBoard"),
    );
  }
}
