import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perplexity_clone/theme/colors.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Where knowledge begins",
          style: GoogleFonts.ibmPlexMono(
            fontSize: 40,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
            height: 1.2,
          ),
        ),
        const SizedBox(height: 32), 
        Container(
            width: 700,
            decoration: BoxDecoration(color: AppColors.searchBar),
            child: Column(
              children: [
                TextField(
                    decoration: InputDecoration(
                  hintText: 'Search for anything',
                )),
                Row(

                )
              ],
            ))
      ],
    );
  } 
}
