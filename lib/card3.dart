import 'dart:developer';
import 'package:flutter/material.dart';
import 'burguerdelicious_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            constraints: const BoxConstraints.expand(
              width: 350,
              height: 450,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://minervafoods.com/wp-content/uploads/2022/12/como_fazer_hamburguer_caseiro_1-1-1.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Stack(children: [
              //TODO: adic um boxdecoration
              //TODO: adic um container. column
              Center(
                  //11
                  child: Wrap(
                //12
                alignment: WrapAlignment.start,
                //13
                spacing: 12,
                //14
                runSpacing: 12,
                //15
                children: [
                  Chip(
                    label: Text('X-Bacon',
                        style: BurguerDeliciousTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.white.withOpacity(0.7),
                    onDeleted: () {
                      log('delete');
                    },
                  ),
                  Chip(
                    label: Text('X-Salada',
                        style: BurguerDeliciousTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.white.withOpacity(0.7),
                    onDeleted: () {
                      log('delete');
                    },
                  ),
                  Chip(
                    label: Text('X-Tudo',
                        style: BurguerDeliciousTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.white.withOpacity(0.7),
                    onDeleted: () {
                      log('delete');
                    },
                  ),
                ],
              ))
            ])));
  }
}
