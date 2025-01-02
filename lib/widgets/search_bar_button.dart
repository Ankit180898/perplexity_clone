import 'package:flutter/material.dart';
import 'package:perplexity_clone/theme/colors.dart';

class SearchBarButton extends StatefulWidget {
  const SearchBarButton({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  State<SearchBarButton> createState() => _SearchBarButtonState();
}

class _SearchBarButtonState extends State<SearchBarButton> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => isHovered = true),
      onExit: (event) => setState(() => isHovered = false),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isHovered ? AppColors.proButton : Colors.transparent,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          spacing: 8,
          children: [
            Icon(
              widget.icon,
              color: AppColors.iconGrey,
              size: 24,
            ),
            Text(
              widget.text,
              style: TextStyle(color: AppColors.textGrey),
            )
          ],
        ),
      ),
    );
  }
}
