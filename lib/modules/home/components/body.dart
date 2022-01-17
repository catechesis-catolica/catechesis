import 'package:catechesis/modules/home/components/catechesis_card.dart';
import 'package:catechesis/shared/models/card_options.dart';
//import 'package:catechesis/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: 
                const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                //EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 2),
              child: GridView.builder(
                itemCount: cardOptions.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 20,
                  childAspectRatio: 1.65,
                ), 
                itemBuilder: (context, index) => CatechesisCard(
                  cardOption: cardOptions[index],
                ),
              ),
            ),
          ),
        ]
      ),
    );
  }
}

