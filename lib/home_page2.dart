import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  HomePage2({Key? key}) : super(key: key);

  final List<IconData> icons = [
    Icons.man,
    Icons.woman,
    Icons.car_crash,
    Icons.settings,
    Icons.chair,
    Icons.bike_scooter,
    Icons.bluetooth,
    Icons.wifi,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('GridView Sample'),
      ),
      body: Center(
        child: GridView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: icons.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          ),
          itemBuilder: (context, index) =>
              getWidget(color: Colors.blue, icon: icons[index]),
          shrinkWrap: true, //Leaves a space on top and bottom.
          // mainAxisSpacing: 5,
          // crossAxisSpacing: 5,
          // crossAxisCount: 2,
          // children: [
          //   getWidget(color: Colors.amber, icon: Icons.chair),
          //   getWidget(color: Colors.green, icon: Icons.man),
          //   getWidget(color: Colors.red, icon: Icons.car_crash),
          //   getWidget(color: Colors.purple, icon: Icons.settings),
          //   getWidget(color: Colors.brown, icon: Icons.wifi),
          // ],
        ),
      ),
    );
  }

//Puting the arguments, marked are required to use it as a named parameters
  Widget getWidget({required Color color, required IconData icon}) {
    return Container(
      color: color,
      child: Icon(
        icon,
        size: 80,
      ),
    );
  }
}
