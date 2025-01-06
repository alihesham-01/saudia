import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/cities_class.dart';
import '../models/favorite_list.dart';


class CitiesWidget extends StatelessWidget {
   CitiesWidget({super.key, required this.cities,required this.onTap});

  final Cities cities;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;



    // Use the singleton's favoriteCities list
    bool isFavorite = FavoriteList.favoriteCities.contains(cities);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            )
          ],
          borderRadius: BorderRadius.circular(26),
          image: DecorationImage(
            image: AssetImage(cities.image),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                if (isFavorite) {
                  FavoriteList.favoriteCities.remove(cities);
                } else {
                  FavoriteList.favoriteCities.add(cities);
                }
                // Show feedback and refresh UI
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(isFavorite
                        ? '${cities.name} removed from favorites'
                        : '${cities.name} added to favorites'),
                  ),
                );
                (context as Element).markNeedsBuild();
              },
              icon: Icon(
                isFavorite ? Icons.favorite  : Icons.favorite_border,
                color: Colors.white,
                size: height * 0.03,
              ),
            ),
            const Spacer(flex: 4),
            Padding(
              padding: EdgeInsets.all(height * 0.015),
              child: Flexible(
                child: Text(
                  cities.name,
                  style: GoogleFonts.cairo(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: height * 0.02,
                      fontWeight: FontWeight.bold,
                    ),
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
