import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:easy_localization/easy_localization.dart'; // Import easy_localization
import 'package:saudia_project/widgets/favorite_widget.dart';
import 'models/cities_class.dart';
import 'models/favorite_list.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  List<Cities> favoriteCities = []; // Initialize the list for favorite cities

  // Example: add some cities to the favorites list
  @override
  void initState() {
    super.initState();
    favoriteCities = FavoriteList.favoriteCities;
  }

  // Method to handle the removal of cities
  void removeFromFavorites(Cities city) {
    setState(() {
      favoriteCities.remove(city); // Remove the city from the list
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          tr('favorites'), // Use translation for title
          style: GoogleFonts.rakkas(
              textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height * 0.04)),
        ),
        backgroundColor: const Color(0xffB97848),
      ),
      body: favoriteCities.isEmpty
          ? Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/empty.json', // Path to your animation file
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 20),
            Text(
              tr('noFavorites'), // Use translation for no favorites message
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      )
          : ListView.builder(
        itemCount: favoriteCities.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: FavoriteWidget(
              cities: favoriteCities[index],
              onDelete: () => removeFromFavorites(favoriteCities[index]), // Pass the delete callback
            ),
          );
        },
      ),
    );
  }
}
