import 'package:flutter/material.dart';
import 'burguerdelicious_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});
  //1
  final String category = 'Vila Andrade';
  final String title = 'R. Jandiatuba, 506';
  final String description = 'Especialidades Culinárias';
  final String tourist = 'Desde 1950';
//2
  @override
  Widget build(BuildContext context) {
//3
    return Center(
        child: Container(
            //1
            padding: const EdgeInsets.all(16),
            //2
            constraints: const BoxConstraints.expand(
              width: 350,
              height: 450,
            ),
            //3
            decoration: const BoxDecoration(
              //4
              image: DecorationImage(
                //5
                image: NetworkImage(
                    'https://i.pinimg.com/736x/71/82/0b/71820bb5162d62a6848c6ac74e1a6ab2.jpg'),
                //6
                fit: BoxFit.cover,
              ),
              //7
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Stack(
              children: [
                //8
                Text(
                  category,
                  style: BurguerDeliciousTheme.darkTextTheme.bodyText1,
                ),
                //9
                Positioned(
                  top: 20,
                  child: Text(
                    title,
                    style: BurguerDeliciousTheme.darkTextTheme.headline2,
                  ),
                ),
                //10
                Positioned(
                  bottom: 30,
                  right: 0,
                  child: Text(
                    description,
                    style: BurguerDeliciousTheme.darkTextTheme.bodyText1,
                  ),
                ),
                //1
                Positioned(
                  bottom: 10,
                  right: 0,
                  child: Text(
                    tourist,
                    style: BurguerDeliciousTheme.darkTextTheme.bodyText1,
                  ),
                )
              ],
            )));
  }
}
