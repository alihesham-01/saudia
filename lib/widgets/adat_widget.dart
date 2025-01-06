import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';

import '../models/3adat_class.dart';

class AdatWidget extends StatelessWidget {
  const AdatWidget({super.key, required this.adat});
  final Adat adat;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.all(height * 0.024),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // العنوان
            Text(
              tr(adat.title), // استخدام الترجمة
              style: GoogleFonts.cairoPlay(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: height * 0.027,
                  fontWeight: FontWeight.bold,
                ),
                shadows: const [
                  Shadow(
                    color: Colors.grey,
                    blurRadius: 2,
                    offset: Offset(0.1, 0.3),
                  )
                ],
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(height: height * 0.017),

            // الصورة
            Container(
              width: double.infinity,
              height: height * 0.24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                image: DecorationImage(
                  image: AssetImage(adat.image),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.85),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.015),

            // الوصف
            Text(
              tr(adat.description), // استخدام الترجمة
              style: GoogleFonts.cairo(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: height * 0.018,
                  fontWeight: FontWeight.bold,
                  shadows: const [
                    Shadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(0.1, 0.3),
                    ),
                  ],
                ),
              ),

            ),
            SizedBox(height: height * 0.015),

            // خط فاصل
            Divider(
              indent: height * 0.01,
              endIndent: height * 0.01,
              color: Colors.grey,
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
