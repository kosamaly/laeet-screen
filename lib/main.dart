import 'package:flutter/material.dart';
import 'package:laaeet/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Laeet(),
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

  int mobileNum = 0;
  String name = "Eslam";
  String itemTitleMain = "شنطه مفقوده المعلم";
  String itemTitleSub = "شنطه مفقوده المعلم";
  String itemPlace = "الفلكي الاسكندريه";
  int itemDate = 0;
  String itemClass = "لوحه مركبه موتوسيكل ";
  String itemStatus = "مفقود ";
  String itemStatus2 = "تم الايجاد";
  bool isItemFound = false;
  Color foundColor = Colors.greenAccent;
  Color notFoundColor = Colors.orangeAccent;
  int itemReward = 0;
  bool afterFounded = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
      ),
      backgroundColor: const Color.fromRGBO(246, 246, 246, 20),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// تم الايجاد
                  Visibility(
                    visible: afterFounded,
                    child: TextButton.icon(
                      onPressed: () {
                        isItemFound = true;
                        foundColor;
                        itemStatus2;
                        afterFounded = false;
                        setState(() {});
                      },
                      icon: const Icon(
                        Icons.check_box,
                        size: 24.0,
                      ),
                      label: const Text('تم الايجاد '),
                    ),
                  ),
                  const SizedBox(
                    width: tinySpace,
                  ),
                  TextButton.icon(
                    // <-- TextButton
                    onPressed: () {},
                    icon: const Icon(
                      Icons.check_box,
                      size: 24.0,
                    ),
                    label: const Text('تعديل'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: ElevatedButton(
                onPressed: () {
                  isSelected = true;
                  setState(() {});
                },
                style: ElevatedButton.styleFrom(
                  elevation: 5,
                  backgroundColor: Colors.green,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  minimumSize: const Size(50, 50),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "اتصل بنا",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: tinySpace,
            ),
            Visibility(
              visible: isSelected,
              child: Text(
                "$mobileNum",
                style: TextStyle(color: Colors.black, fontSize: 23),
              ),
            ),
            const SizedBox(
              height: largeSpace,
            ),
            Container(
              width: MediaQuery.of(context).size.height * 0.4,
              height: MediaQuery.of(context).size.width * 1.2,
              child: Card(
                color: Colors.white,
                child: Column(children: [
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: Icon(
                      Icons.person,
                      size: 35,
                    ),
                  ),
                  Text(
                    name,
                    style: const TextStyle(fontSize: 15),
                  ),
                  const SizedBox(
                    height: extraSpace,
                  ),
                  const Image(image: AssetImage("")),
                  const SizedBox(
                    height: extraSpace,
                  ),
                  Text(
                    itemTitleMain,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  const SizedBox(
                    height: smallSpace,
                  ),
                  Text(
                    "$itemTitleSub",
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                  ),
                  const SizedBox(
                    height: largeSpace,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "مكان الفقد:",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                            text: '  $itemPlace',
                            style: const TextStyle(
                              color: Colors.black45,
                              fontSize: 18,
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: largeSpace,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "تاريخ الفقد:",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                            text: '  $itemDate',
                            style: const TextStyle(
                              color: Colors.black45,
                              fontSize: 18,
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: extraSpace,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "  الفئة :   ",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                          text: '  $itemClass',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              background: Paint()
                                ..strokeWidth = 24.0
                                ..color = Colors.grey
                                ..style = PaintingStyle.stroke
                                ..strokeJoin = StrokeJoin.round),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: largeSpace,
                  ),
                  RichText(
                    text: TextSpan(
                      text: " الحاله : ",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                            text: isItemFound ? itemStatus2 : itemStatus,
                            style: TextStyle(
                              color: isItemFound ? foundColor : notFoundColor,
                              fontSize: 18,
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: largeSpace,
                  ),
                  RichText(
                    text: TextSpan(
                      text: " المكافآه :",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                            text: '  $itemReward ، جنيه ',
                            style: const TextStyle(
                              color: Colors.black45,
                              fontSize: 18,
                            )),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

///مكان الفقد"
