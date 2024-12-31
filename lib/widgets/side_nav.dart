import 'package:flutter/material.dart';
import 'package:perplexity_clone/theme/colors.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class SideNav extends StatefulWidget {
  const SideNav({super.key});

  @override
  State<SideNav> createState() => _SideNavState();
}

class _SideNavState extends State<SideNav> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: isClicked ? 160 : 60,
      color: AppColors.sideNav,
      duration: const Duration(milliseconds: 200),
      child: Column(
        spacing: 16,
        crossAxisAlignment:
            !isClicked ? CrossAxisAlignment.center : CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 16),
          IconButton(
            icon: isClicked
                ? Image.asset(
                    'assets/logo.png',
                    height: 24,
                    color: AppColors.iconGrey,
                  )
                : CircleAvatar(
                    radius: 16,
                    backgroundColor: AppColors.cardColor,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset('assets/logo.png'),
                    ),
                  ),
            onPressed: () {},
          ),
          const SizedBox(height: 8),
          buildIconButton(IconsaxPlusLinear.add, 'Add'),
          buildIconButton(IconsaxPlusLinear.search_normal, 'Search'),
          buildIconButton(IconsaxPlusLinear.language_circle, 'Language'),
          buildIconButton(IconsaxPlusLinear.magicpen, 'AI'),
          buildIconButton(IconsaxPlusLinear.cloud, 'Cloud'),
          const Spacer(),
          IconButton(
            icon: Icon(
              isClicked
                  ? IconsaxPlusLinear.arrow_left_1
                  : IconsaxPlusLinear.arrow_right_3,
              color: AppColors.iconGrey,
            ),
            onPressed: () {
              setState(() {
                isClicked = !isClicked;
              });
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget buildIconButton(IconData icon, String text) {
    return GestureDetector(
      onTap: () {
        // Handle button tap
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(
          horizontal: isClicked ? 16 : 0,
          vertical: 8,
        ),
        child: Row(
          mainAxisAlignment:
              isClicked ? MainAxisAlignment.start : MainAxisAlignment.center,
          children: [
            Icon(icon, color: AppColors.iconGrey),
            if (isClicked) const SizedBox(width: 8),
            if (isClicked)
              AnimatedContainer(
                duration: Duration(milliseconds: 200),
                child: Flexible(
                  child: Text(
                    text,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.iconGrey),
                    overflow: TextOverflow.ellipsis, // Prevents overflow
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
