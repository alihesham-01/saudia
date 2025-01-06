import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'details/Details_Medinah.dart';
import 'details/Details_ahsaa.dart';
import 'details/Details_dr3ya.dart';
import 'details/Details_hael.dart';
import 'details/Details_makka.dart';
import 'details/Details_ola.dart';
import 'details/Details_ynb.dart';
import 'details/details_taef.dart';
import 'models/cities_class.dart';
import 'categories/adat_wtkaled_categ.dart';
import 'favorite_page.dart';
import 'settings_page.dart';
import 'widgets/cities_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Start with Home as the default
  final PageController _pageController = PageController(initialPage: 0);

  final List<Widget> _pages = [
    const HomeContent(),
    const FavoritePage(),
    const SettingsPage(),
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white,
          color: const Color(0xffB97848),
          index: _selectedIndex,
          items: const <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.favorite, size: 30),
            Icon(Icons.settings, size: 30),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
        ),
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          children: _pages,
        ),
      ),
    );
  }
}

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  final List<Cities> cities = [
   const Cities(name: "ينبع", image: "assets/yanbu3.jpg",page: DetailsYnb()),
    const Cities(name: "الدرعية(الرياض)", image: "assets/diryah.jpg",page: DetailsDr3ya()),
    const Cities(name: "جدة التاريخية", image: "assets/jeddahtare5.jpg",page: DetailsDr3ya()),
    const Cities(name: "العلا(مدائن الصالح)", image: "assets/lel3ola.jpg",page: DetailsOla()),
    const Cities(name: "الطائف", image: "assets/eltaif.jpg",page: DetailsTaef()),
    const Cities(name: "نجران", image: "assets/nagran.jpeg",page: DetailsTaef()),
    const Cities(name: "حائل", image: "assets/7a2el.jpg",page: DetailsHael()),
    const Cities(name: "الأحساء", image: "assets/ela7sa2.jpg",page: DetailsAhsaa()),
    const Cities(name: "مكة", image: "assets/maka.jpg",page: DetailsMakka()),
    const Cities(name: "المدينة المنورة", image: "assets/elmadina.jpg",page: DetailsMedinah()),
  ];

  List<Cities> filteredCities = [];

  @override
  void initState() {
    super.initState();
    filteredCities = cities; // Initialize with all cities
  }

  void filterCities(String query) {
    final filtered = cities.where((city) {
      final cityName = city.name.toLowerCase();
      final searchQuery = query.toLowerCase();
      return cityName.contains(searchQuery); // Case-insensitive search
    }).toList();

    setState(() {
      filteredCities = filtered;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(height * 0.024),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.015),
            Text(
              tr("explore"), // Translation here
              style: GoogleFonts.rakkas(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: height * 0.027,
                ),
              ),
            ),
            Text(
              tr("saudi_arabia"), // Translation here
              style: GoogleFonts.cairoPlay(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: height * 0.045,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: height * 0.015),
            TextFormField(
              // textDirection: TextDirection.rtl,
              onChanged: filterCities,
              decoration: InputDecoration(
                fillColor: const Color.fromRGBO(243, 248, 254, 1),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: const BorderSide(
                    color: Color(0xffB97848),
                    width: 1.5,
                  ),
                ),
                hintText: tr("search_city"),
                // Translation here
                // hintTextDirection: TextDirection.rtl,
                hintStyle: GoogleFonts.urbanist(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(0, 0, 0, 0.5),
                ),
                prefixIcon: const Icon(
                  Icons.filter_list_sharp,
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                ),
                suffixIcon: const Icon(
                  Icons.search_rounded,
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                ),
              ),
            ),
            SizedBox(height: height * 0.02),
            const Divider(color: Colors.grey, thickness: 1),
            Text(
              tr("cities"), // Translation here
              style: GoogleFonts.cairoPlay(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: height * 0.021,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: height * 0.02),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent: height * 0.25,
              ),
              itemCount: filteredCities.length,
              itemBuilder: (context, index) {
                return CitiesWidget(
                  cities: filteredCities[index],
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => filteredCities[index].page,
                      ),
                    );
                  },
                );
              },
            ),
            SizedBox(height: height * 0.03),
            const Divider(color: Colors.grey, thickness: 1),
            Padding(
              padding: EdgeInsets.only(right: height * 0.01),
              child: Text(
                tr("traditions"), // Translation here
                style: GoogleFonts.cairoPlay(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: height * 0.021,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.015),
            Padding(
              padding: EdgeInsets.all(height * 0.01),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AdatWtkaled()));
                },
                child: Container(
                  width: width,
                  height: height * 0.2,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/3adatwtakaled.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
