import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/3adat_class.dart';
import '../widgets/adat_widget.dart';

class AdatWtkaled extends StatelessWidget {
  const AdatWtkaled({super.key});

  final List<Adat> adat = const [
    Adat(
      title: "adat_1_title",
      description: "adat_1_description",
      image: "assets/1-3adat.jpg",
    ),
    Adat(
      title: "adat_2_title",
      description: "adat_2_description",
      image: "assets/2-3adat.jpg",
    ),
    Adat(
      title: "adat_3_title",
      description: "adat_3_description",
      image: "assets/3-3adat.jpg",
    ),
    Adat(
      title: "adat_4_title",
      description: "adat_4_description",
      image: "assets/4-3adat.jpg",
    ),
    Adat(
      title: "adat_5_title",
      description: "adat_5_description",
      image: "assets/5-3adat.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffB97848),
          title: Text(tr("adat_wtkaled"), style: GoogleFonts.rakkas(
            fontWeight: FontWeight.bold,
            fontSize: height * 0.035,
          )),
        ),
        backgroundColor: Colors.white,
        // body: Column(
        //   children: [
        //     SizedBox(height: height * 0.025),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [
        //         const Spacer(
        //           flex: 2,
        //         ),
        //         Center(
        //           child: Flexible(
        //             child: Text(
        //               tr("adat_wtkaled"),
        //               style: GoogleFonts.rakkas(
        //                 color: Colors.black,
        //                 fontSize: height * 0.035,
        //                 fontWeight: FontWeight.bold,
        //                 shadows: const [
        //                   Shadow(
        //                       color: Colors.grey,
        //                       blurRadius: 2,
        //                       offset: Offset(0.1, 0.3))
        //                 ],
        //               ),
        //             ),
        //           ),
        //         ),
        //         const Spacer(),
        //         Padding(
        //           padding: EdgeInsets.symmetric(horizontal: height * 0.015),
        //           child: Flexible(
        //             child: Container(
        //               decoration: BoxDecoration(
        //                 boxShadow: const [
        //                   BoxShadow(
        //                     color: Colors.grey,
        //                     blurRadius: 3,
        //                     offset: Offset(0.1, 0.3),
        //                   )
        //                 ],
        //                 borderRadius: BorderRadius.circular(100),
        //                 color: const Color(0xffB97848),
        //               ),
        //               child: IconButton(
        //                 onPressed: () {
        //                   Navigator.pop(context);
        //                 },
        //                 icon: const Icon(
        //                   Icons.arrow_forward_rounded,
        //                   color: Colors.black,
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //     Divider(
        //       indent: width * 0.15,
        //       endIndent: width * 0.15,
        //       color: Colors.grey,
        //       thickness: 2,
        //     ),
          body:   ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),

              itemCount: adat.length,
              itemBuilder: (context, index) {
                return AdatWidget(
                  adat: Adat(
                    title: tr(adat[index].title),
                    description: tr(adat[index].description),
                    image: adat[index].image,
                  ),
                );
              },
            ),
          // ],
        ),
      // ),
    );
  }
}
