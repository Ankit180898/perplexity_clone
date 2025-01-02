import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:perplexity_clone/theme/colors.dart';
import 'package:perplexity_clone/widgets/search_bar_button.dart';

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
            decoration: BoxDecoration(
                color: AppColors.searchBar,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: AppColors.searchBarBorder,
                  width: 1.5,
                )),
            child: Column(
              spacing: 16,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 16.0),
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search for anything...',
                          isDense: true,
                          contentPadding: const EdgeInsets.all(0),
                          hintStyle: TextStyle(
                              color: AppColors.textGrey, fontSize: 16),
                          border: InputBorder.none)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 8, bottom: 8),
                  child: Row(
                    children: [
                      SearchBarButton(
                        icon: IconsaxPlusLinear.sort,
                        text: 'Focus',
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      SearchBarButton(
                        icon: IconsaxPlusLinear.add_circle,
                        text: 'Attach',
                      ),
                      const Spacer(),
                      IconButton.filledTonal(
                          style: ButtonStyle(
                            backgroundColor:
                                WidgetStateColor.resolveWith((states) {
                              return AppColors.submitButton;
                            }),
                          ),
                          color: AppColors.background,
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward))
                    ],
                  ),
                )
              ],
            ))
      ],
    );
  }
}
