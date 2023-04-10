import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:appjam/account/model/user.dart';
import 'package:appjam/account/utils/user_preferences.dart';
import 'package:appjam/account/widget/appbar_widget.dart';
import 'package:appjam/account/widget/profile_widget.dart';
import 'package:appjam/account/widget/textfield_widget.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;
  final icon = CupertinoIcons.moon_stars;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 24),
            ProfileWidget(
              imagePath: user.imagePath,
              onClicked: () async {},
            ),
            const SizedBox(height: 24),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: user.name,
                  enabled: false),
            ),
            const SizedBox(height: 24),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: user.email,
                  enabled: false),
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Hakkında',
              text: user.about,
              maxLines: 5,
              onChanged: (about) {},
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: "Linkedin adresinizi giriniz.",
              ),
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                // güncelleme
              },
              child: const Text('Kaydet'),
            ),
          ],
        ),
      );
}
