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
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        spacing: 4,
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
    );
  }
}
