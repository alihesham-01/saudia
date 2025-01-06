import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saudia_project/home_page.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 0.03;

    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/ExploreBackground.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(bottom: height),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const HomePage()));
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.resolveWith<Color>((states) {
                      if (states.contains(WidgetState.pressed)) {
                        return const Color.fromRGBO(51, 51, 51, 1.0);
                      }
                      return const Color(0xff231F1C);
                    }),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.height * 0.074,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                        child: Text("استكشف",
                            style: GoogleFonts.amiri(
                                textStyle: TextStyle(
                                    color: const Color(0xffB7B2C8),
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.06),
                                fontWeight: FontWeight.bold))),
                  ),
                ),
              ))
        ]),
      ),
    );
  }
}
