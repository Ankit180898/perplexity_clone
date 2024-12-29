import 'package:flutter/material.dart';
import 'package:perplexity_clone/theme/colors.dart';

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
            isClicked ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 16),
          IconButton(
            icon: CircleAvatar(
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
          buildIconButton(Icons.add, 'Add'),
          buildIconButton(Icons.search, 'Search'),
          buildIconButton(Icons.language, 'Language'),
          buildIconButton(Icons.auto_awesome, 'AI'),
          buildIconButton(Icons.cloud, 'Cloud'),
          const Spacer(),
          IconButton(
            icon: Icon(
              isClicked
                  ? Icons.keyboard_arrow_left_outlined
                  : Icons.keyboard_arrow_right_outlined,
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
              Flexible(
                child: Text(
                  text,
                  style: TextStyle(color: AppColors.iconGrey),
                  overflow: TextOverflow.ellipsis, // Prevents overflow
                ),
              ),
          ],
        ),
      ),
    );
  }
}
