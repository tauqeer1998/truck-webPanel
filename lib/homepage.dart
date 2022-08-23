import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

import 'dashboard_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String id= 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _selectedScreen = DashboardScreen();
  currentScreen(item){
    switch(item.route){
      case DashboardScreen.id :
        setState(() {
          _selectedScreen = DashboardScreen();

        });
    }
  }
  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text('Admin Panel')),
      ),
      sideBar: SideBar(
        items: const [
          AdminMenuItem(
            title: 'Dashboard',
            route: DashboardScreen.id,
            icon: Icons.dashboard,

          ),
          AdminMenuItem(
            title: 'Categories',
            icon: Icons.category,
            children: [
              AdminMenuItem(
                title: 'New Load Inventory',
                route: '/newLoadInventory',
              ),
              AdminMenuItem(
                title: 'Availabe Loads',
                route: '/availableLoads',
              ),
              AdminMenuItem(
                title: 'Booked Loads',
                route: '/bookedLoads',
              ),
            ],
          ),
        ],
        selectedRoute: HomeScreen.id,
        onSelected: (item) {
         // if (item.route != null) {
          //  Navigator.of(context).pushNamed(item.route!);
        //  }
        },
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.topLeft,
          child: const Text(
            'Dashboard',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 36,color: Colors.indigoAccent
            ),
          ),
          height: 400,
          width: 400,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images.jpeg',
                  ),
                fit: BoxFit.contain,
              )
          ),

        ),
      ),
    );
  }
}
