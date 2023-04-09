import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../dimensions.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                height: MediaQuery.of(context).size.height * 0.820,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.only(top: D.size3XLarge),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Center(
                          child: Text(
                            "أرقام تهمك",
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: D.size3XLarge,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: D.size3XLarge),
                          child: Text(
                            "أرقام الطواري",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: D.sizeXXLarge,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: D.sizeXXLarge),
                          child: InkWell(
                              onTap: () {},
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text(
                                      "الإسعاف",
                                      style: TextStyle(
                                        fontSize: 24,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: D.sizeLarge,
                                    ),
                                    Container(
                                      width: 40,
                                      height: 40,
                                      decoration: const ShapeDecoration(
                                          shape:
                                              CircleBorder(), //here we set the circular figure
                                          color: Colors.red),
                                      child: const Center(
                                          child: Icon(
                                        FontAwesomeIcons.ambulance,
                                        size: 20,
                                        color: Colors.white,
                                      )),
                                    ),
                                  ])),
                        ),
                        const SizedBox(
                          height: D.sizeXXLarge,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: D.sizeXXLarge),
                          child: InkWell(
                              onTap: () {},
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text(
                                      "المطافي",
                                      style: TextStyle(
                                        fontSize: 24,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: D.sizeLarge,
                                    ),
                                    Container(
                                      width: 40,
                                      height: 40,
                                      decoration: const ShapeDecoration(
                                          shape:
                                              CircleBorder(), //here we set the circular figure
                                          color: Colors.red),
                                      child: const Center(
                                          child: Icon(
                                        Icons.fire_extinguisher_rounded,
                                        size: 20,
                                        color: Colors.white,
                                      )),
                                    ),
                                  ])),
                        ),
                        const SizedBox(
                          height: D.sizeXXLarge,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: D.sizeXXLarge),
                          child: InkWell(
                              onTap: () {},
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text(
                                      "شرطه ",
                                      style: TextStyle(
                                        fontSize: 24,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: D.sizeLarge,
                                    ),
                                    Container(
                                      width: 40,
                                      height: 40,
                                      decoration: const ShapeDecoration(
                                          shape:
                                              CircleBorder(), //here we set the circular figure
                                          color: Colors.red),
                                      child: const Center(
                                          child: Icon(
                                        Icons.local_police,
                                        size: 20,
                                        color: Colors.white,
                                      )),
                                    ),
                                  ])),
                        ),
                        const SizedBox(
                          height: D.size3XLarge,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: D.size3XLarge),
                          child: Text(
                            "معامل التحاليل",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: D.sizeXXLarge,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: D.sizeXXLarge),
                          child: InkWell(
                              onTap: () {},
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const Text(
                                    "معمل البرج",
                                    style: TextStyle(
                                      fontSize: 24,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: D.sizeLarge,
                                  ),
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: const ShapeDecoration(
                                        shape:
                                            CircleBorder(), //here we set the circular figure
                                        color: Colors.greenAccent),
                                    child: const Center(
                                        child: Icon(
                                      FontAwesomeIcons.microscope,
                                      size: 20,
                                      color: Colors.white,
                                    )),
                                  ),
                                ],
                              )),
                        ),
                        const SizedBox(
                          height: D.sizeXXLarge,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: D.sizeXXLarge),
                          child: InkWell(
                              onTap: () {},
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const Text(
                                    "معمل المختبر",
                                    style: TextStyle(
                                      fontSize: 24,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: D.sizeLarge,
                                  ),
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: const ShapeDecoration(
                                        shape:
                                            CircleBorder(), //here we set the circular figure
                                        color: Colors.greenAccent),
                                    child: const Center(
                                        child: Icon(
                                      FontAwesomeIcons.microscope,
                                      size: 20,
                                      color: Colors.white,
                                    )),
                                  ),
                                ],
                              )),
                        ),
                        const SizedBox(
                          height: D.sizeXXLarge,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: D.sizeXXLarge),
                          child: InkWell(
                              onTap: () {},
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const Text(
                                    "معمل الشمس",
                                    style: TextStyle(
                                      fontSize: 24,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: D.sizeLarge,
                                  ),
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: const ShapeDecoration(
                                        shape:
                                            CircleBorder(), //here we set the circular figure
                                        color: Colors.greenAccent),
                                    child: const Center(
                                        child: Icon(
                                      FontAwesomeIcons.microscope,
                                      size: 20,
                                      color: Colors.white,
                                    )),
                                  ),
                                ],
                              )),
                        ),
                      ]),
                ))));
  }
}
