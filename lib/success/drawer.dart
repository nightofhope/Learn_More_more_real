import 'package:flutter/material.dart';
import 'package:learn_more_more/screens/acc/acc.dart';
import 'package:learn_more_more/screens/ans/ans.dart';
import 'package:learn_more_more/screens/book/book.dart';
import 'package:learn_more_more/screens/contact/contact.dart';
import 'package:learn_more_more/screens/couse/couse.dart';
import 'package:learn_more_more/screens/couse/newphy.dart';
import 'package:learn_more_more/screens/login/login.dart';
import 'package:learn_more_more/screens/news/news.dart';
import 'package:learn_more_more/screens/tutor/tutor.dart';

class tapbar extends StatelessWidget {
  const tapbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Image(image: AssetImage('assets/logos/education.png'))),
        accountbar(context),
        cousestudybar(context),
        bookbar(context),
        //newbar(context),
        tutorbar(context),
        //ansbar(context),
        cantactbar(context),
        logoutbar(context),
      ],
    );
  }

  ListTile logoutbar(BuildContext context) {
    return ListTile(
      title: const Text('ออกจากระบบ'),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return log1();
        }));
      },
    );
  }

  ListTile cantactbar(BuildContext context) {
    return ListTile(
      title: const Text('ติดต่อเรา'),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return con1();
        }));
      },
    );
  }

  ListTile ansbar(BuildContext context) {
    return ListTile(
      title: const Text('ถาม-ตอบ'),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ans1();
        }));
      },
    );
  }

  ListTile tutorbar(BuildContext context) {
    return ListTile(
      title: const Text('การค้นหาติวเตอร์'),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return tutor1();
        }));
      },
    );
  }

  ListTile newbar(BuildContext context) {
    return ListTile(
      title: const Text('ข่าวสารการศึกษา'),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return news1();
        }));
      },
    );
  }

  ListTile bookbar(BuildContext context) {
    return ListTile(
      title: const Text('เอกสารประกอบการเรียน'),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return book1();
        }));
      },
    );
  }

  ListTile cousestudybar(BuildContext context) {
    return ListTile(
      title: const Text('คอร์สเรียนรายวิชา'),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return newphy();
        }));
      },
    );
  }

  ListTile accountbar(BuildContext context) {
    return ListTile(
      title: const Text('บัญชีผู้ใช้งาน'),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DisplayScreen();
        }));
      },
    );
  }
}
