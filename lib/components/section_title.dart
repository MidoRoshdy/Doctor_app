import 'package:flutter/material.dart';

import '../constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.pressOnSeeAll,
  }) : super(key: key);

  final String title;
  final VoidCallback pressOnSeeAll;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
            
          ),
          TextButton(
            onPressed: pressOnSeeAll,
            child: Text(
              "See All",
              style: TextStyle(color: const Color.fromARGB(255, 47, 49, 105),fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
