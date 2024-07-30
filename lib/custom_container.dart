import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final ImageProvider image;
  final String countryName;
  final String continent;
  final String language;

  const CustomContainer({
    required this.image,
    required this.countryName,
    required this.continent,
    required this.language,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Image(
            image: image,
            width: 50,
            height: 50,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Country: $countryName',
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
              Text(
                'Continent: $continent',
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
              Text(
                'Language: $language',
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
