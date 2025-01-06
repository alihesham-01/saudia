import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          tr('settings'),
          style: GoogleFonts.rakkas(
              textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height * 0.037)),
        ),
        backgroundColor: const Color(0xffB97848),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tr('language'),
              style: GoogleFonts.rakkas(
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.height * 0.04)),
            ),
            const SizedBox(height: 10),
            ListTile(
              title: Text(tr('arabic'),
                style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.022,
                fontWeight: FontWeight.bold
              ),),
              onTap: () {
                context.setLocale(const Locale('ar')); // تغيير اللغة إلى العربية
              },
            ),
            ListTile(
              title: Text(tr('english',),
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.022,
                    fontWeight: FontWeight.bold
                ),),
              onTap: () {
                context.setLocale(const Locale('en')); // تغيير اللغة إلى الإنجليزية
              },
            ),
          ],
        ),
      ),
    );
  }
}
