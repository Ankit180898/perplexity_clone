import 'package:flutter/material.dart';
import 'package:perplexity_clone/widgets/search_section.dart';
import 'package:perplexity_clone/widgets/side_nav.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideNav(),
          Column(
            children: [
              Expanded(child: SearchSection()),
              Container(
                height: 40,
              )
            ],
          )
        ],
      ),
    );
  }
}
