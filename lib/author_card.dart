import 'package:flutter/material.dart';
import 'burguerdelicious_theme.dart';
import 'circle_image.dart';

class AuthorCard extends StatelessWidget {
  //1
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard({
    super.key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  });

  //2
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        //1
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CircleImage(
            imageProvider: imageProvider,
            imageRadius: 28,
          ),
          //2
          const SizedBox(width: 8),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(authorName,
                style: BurguerDeliciousTheme.lightTextTheme.headline2),
            Text(title, style: BurguerDeliciousTheme.lightTextTheme.headline3)
          ])
        ]));
  }
}
