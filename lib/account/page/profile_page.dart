import 'package:appjam/screen/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:appjam/account/model/user.dart';
import 'package:spider_chart/spider_chart.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:appjam/account/page/edit_profile_page.dart';
import 'package:appjam/account/utils/user_preferences.dart';
import 'package:appjam/account/widget/numbers_widget.dart';
import 'package:appjam/account/widget/profile_widget.dart';

String uri = ("https://www.linkedin.com/in/sercanyusuf/");
final Uri _url = Uri.parse(uri);

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Profil"),
      ),
      drawer: const DrawerMenu(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 24),
          const CircleAvatar(
            foregroundImage: AssetImage("assets/images/sy.jpg"),
            radius: 100,
          ),
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(height: 24),
          const NumbersWidget(),
          const SizedBox(height: 24),
          buildAbout(user),
          const SizedBox(height: 24),
          buildSave(user),
          const SizedBox(height: 24),
          buildLinkedin(user),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: SpiderChart(
              labels: const [
                "Proje Yönetimi",
                "Flutter",
                "Problem Çözme",
                "Grup Çalışması",
                "Unity"
              ],
              data: const [
                10,
                10,
                10,
                10,
                8,
              ],
              maxValue:
                  10, // the maximum value that you want to represent (essentially sets the data scale of the chart)
              colors: const <Color>[
                Colors.red,
                Colors.green,
                Colors.blue,
                Colors.yellow,
                Colors.indigo,
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: const TextStyle(color: Colors.grey),
          )
        ],
      );
  Widget buildAbout(User user) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hakkında',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              user.about,
              style: const TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
  Widget buildSave(User user) => Column(
        children: [
          ElevatedButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => const EditProfilePage()),
              ); //
            },
            child: const Text('Güncelle'),
          ),
        ],
      );
}

Widget buildLinkedin(User user) => Column(
      children: [
        InkWell(
          onTap: () {
            _launchUrl();
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset('assets/images/linkedin.png',
                width: 50.0, height: 50.0),
          ),
        ),
      ],
    );
Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Adrese gidilemedi $_url');
  }
}
