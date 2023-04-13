import 'package:flutter/material.dart';
import 'author_card.dart';
import 'burguerdelicious_theme.dart';
import 'burguerdelicious_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        //1
        child: Container(
            constraints: const BoxConstraints.expand(
              width: 350,
              height: 450,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://img.itdg.com.br/tdg/images/recipes/000/304/904/332797/332797_original.jpg?mode=crop&width=710&height=400'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            //2
            child: Column(children: [
              const AuthorCard(
                authorName: 'DGL BURGUER',
                title: 'Project Analyst',
                imageProvider: NetworkImage(
                    'https://img.itdg.com.br/tdg/images/recipes/000/304/904/332797/332797_original.jpg?mode=crop&width=710&height=400'),
              ),
              IconButton(
                //4
                icon: const Icon(Icons.favorite_border),
                iconSize: 30,
                color: Colors.grey[400],
                //5
                onPressed: () {
                  const snackBar = SnackBar(content: Text('Favorite Pressed'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
              ),
              Expanded(
                  //2
                  child: Stack(children: [
                //3
                Positioned(
                  bottom: 16,
                  right: 16,
                  child: Text(
                    '100% Bovina',
                    style: BurguerDeliciousTheme.lightTextTheme.headline1,
                  ),
                ),
                //4
                Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          'Grelhados',
                          style: BurguerDeliciousTheme.lightTextTheme.headline1,
                        ))),
              ]))
            ])));
  }
}
