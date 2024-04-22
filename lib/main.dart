import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        appBar: getAppBar(),
        body: SafeArea(child: getMainBody()),
      ),
    );
  }
}

PreferredSizeWidget getAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: const Color.fromARGB(255, 21, 88, 14),
    title: const Text(
      'رزومه',
      style: TextStyle(color: Colors.white, fontSize: 28),
    ),
    centerTitle: true,
  );
}

Widget getMainBody() {
  return SingleChildScrollView(
    child: Column(
      children: [
        const SizedBox(
          width: double.infinity,
        ),
        getHeader(),
        const SizedBox(
          height: 15,
        ),
        getIcons(),
        const SizedBox(
          height: 20,
        ),
        getSkills(),
        const SizedBox(
          height: 30,
        ),
        getResume(),
      ],
    ),
  );
}

Widget getHeader() {
  return const Column(
    children: [
      SizedBox(
        height: 20,
      ),
      CircleAvatar(
        backgroundImage: AssetImage('images/mari.png'),
        radius: 70,
      ),
      Text(
        '   مری هستم برنامه نویس ',
        style: TextStyle(fontSize: 25),
      ),
      Text(
        'یه برنامه نویس فلاترکه عاشق یادگیری هستم',
        style: TextStyle(fontSize: 20),
      ),
    ],
  );
}

Widget getIcons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
          onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.linkedin)),
      IconButton(
          onPressed: () {},
          icon: const FaIcon(FontAwesomeIcons.squareInstagram)),
      IconButton(
          onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.telegram)),
      IconButton(onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.github))
    ],
  );
}

Widget getSkills() {
  var List = [
    'android',
    'dart',
    'flutter',
    'java',
    'kotlin',
  ];
  return Wrap(
    children: [
      for (var Skill in List)
        Card(
          elevation: 4,
          child: Column(
            children: [
              SizedBox(
                height: 80,
                child: Image(
                  image: AssetImage('images/$Skill.png'),
                  width: 60,
                ),
              ),
              Text('َ$Skill'),
            ],
          ),
        )
    ],
  );
}

Widget getResume() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      width: double.infinity,
      color: Colors.grey[400],
      child: Column(
        children: [
          const Text(
            'سابقه کاری من',
            style: TextStyle(fontSize: 18),
          ),
          _getHistory()
        ],
      ),
    ),
  );
}

Widget _getHistory() {
  var List = [
    ' کار کردن با زبان فلاتر',
    'getX وblok  مهارت در',
    'اشنایی بازبان دارت',
    'کارکردن در تیم',
    'اشنایی با C#  C++',
  ];
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      const SizedBox(width: double.infinity),
      for (var title in List)
        Text(
          title,
          textDirection: TextDirection.rtl,
        )
    ],
  );
}
