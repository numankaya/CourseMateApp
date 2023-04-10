import 'package:appjam/account/page/profile_page.dart';
import 'package:appjam/courses/courses.dart';
import 'package:appjam/news/news.dart';
import 'package:appjam/ranking/ranking.dart';
import 'package:appjam/screen/signin_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Sercan Yusuf'),
            accountEmail: const Text('secan.yusuf@gmail.com'),
            currentAccountPicture: CircleAvatar(
              maxRadius: 75,
              minRadius: 5,
              backgroundColor: Colors.lime,
              child: ClipOval(
                child: Image.asset(
                  "assets/images/sy.jpg",
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage("assets/images/background.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.newspaper_outlined),
              title: const Text("Haberler"),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const News()));
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.compare_outlined),
              title: const Text("Sıralama"),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Ranking()));
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.class_outlined),
              title: const Text("Kurslar"),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Courses()));
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.person_outline),
              title: const Text("Profil"),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Çıkış"),
              onTap: () {
                FirebaseAuth.instance.signOut().then((value) {
                  debugPrint("Signed Out");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInScreen()));
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
