import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/cities_class.dart';

class FavoriteWidget extends StatelessWidget {
  const FavoriteWidget({super.key, required this.cities, required this.onDelete});

  final Cities cities;
  final VoidCallback onDelete; // Callback to remove city

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: height * 0.01),
      child: Container(
        padding: EdgeInsets.all(height * 0.02),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            )
          ],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            // Image
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0,1),
                )]
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  cities.image,
                  width: height * 0.1,
                  height: height * 0.1,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 16),

            // City name
            Expanded(
              child: Text(
                cities.name,
                style: GoogleFonts.mada(
                  textStyle: TextStyle(
                    fontSize: height * 0.025,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),

            // Delete button
            IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: onDelete, // Call the callback to remove the city
            ),
          ],
        ),
      ),
    );
  }
}
