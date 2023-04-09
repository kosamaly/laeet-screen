import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laaeet/pages/goldPrices.dart';
import 'package:laaeet/pages/result.dart';

import 'dimensions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/result": (context) => Result(),
        "/goldPrices": (context) => GoldPrice(),
      },
      home: const Laeet(),
    );
  }
}

class Laeet extends StatefulWidget {
  const Laeet({Key? key}) : super(key: key);

  @override
  State<Laeet> createState() => _LaeetState();
}

class _LaeetState extends State<Laeet> {
  bool isSelected = false;

  Color iconColor = Colors.white70;
  Color iconColor2 = Colors.white70;
  double height = 1;
  bool isMaleSelected = false;
  bool isFemaleSelected = false;

  double exchangeRate = 0;

  // TabBar get _tabBar => const TabBar(
  //       labelColor: Colors.black, //<-- selected text color
  //       unselectedLabelColor: Colors.white,
  //       indicatorColor: Colors.black, //<-- Unselected text color
  //       tabs: [
  //         Tab(text: 'الموجودات', icon: Icon(FontAwesomeIcons.check)),
  //         Tab(text: 'البحث', icon: Icon(Icons.search)),
  //         Tab(text: 'الرئيسية', icon: Icon(Icons.home)),
  //       ],
  //     );
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.home_repair_service),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
          centerTitle: true,
          title: const Text("لقيت دوت كوم"),
          backgroundColor: Color.fromARGB(255, 32, 151, 84),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: D.sizeXXLarge),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10.0, // soften the shadow
                        spreadRadius: 0.1, //extend the shadow
                        offset: Offset(
                          0.1, // Move to right 5  horizontally
                          0.1, // Move to bottom 5 Vertically
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  height: MediaQuery.of(context).size.height * 0.820,
                  width: 400,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Center(
                      child: Column(
                        children: [
                          const Text(
                            "الخدمات",
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: D.size3XLarge,
                          ),
                          const SizedBox(
                            height: D.size3XLarge,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    Navigator.pushNamed(context, "/result");
                                  });
                                },
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  width:
                                      MediaQuery.of(context).size.width * 0.40,
                                  decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 10.0, // soften the shadow
                                          spreadRadius: 0.1, //extend the shadow
                                          offset: Offset(
                                            0.1, // Move to right 5  horizontally
                                            0.1, // Move to bottom 5 Vertically
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(
                                        12,
                                      ),
                                      color: Colors.white),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center, //x
                                    mainAxisAlignment:
                                        MainAxisAlignment.center, //y
                                    children: const [
                                      Icon(
                                        FontAwesomeIcons.phone,
                                        size: 40,
                                        color: Colors.green,
                                      ),
                                      SizedBox(
                                        height: D.sizeLarge,
                                      ),
                                      Text(
                                        "أرقام تهمك",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: D.sizeXXLarge,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.40,
                                decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 10.0, // soften the shadow
                                        spreadRadius: 1.0, //extend the shadow
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(
                                      12,
                                    ),
                                    color: Colors.white),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, "/goldPrices");
                                        setState(() {});
                                      },
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center, //x
                                        mainAxisAlignment:
                                            MainAxisAlignment.center, //y
                                        children: const [
                                          Icon(
                                            FontAwesomeIcons.coins,

                                            size: 40,
                                            color: Colors.orangeAccent,

                                            /// salama edit color
                                          ),
                                          SizedBox(height: D.sizeLarge),
                                          Text("أسعار الذهب و الدولار",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.bold,
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
