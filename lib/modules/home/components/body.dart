import 'package:catechesis/shared/models/card_options.dart';
import 'package:catechesis/shared/themes/appcolors.dart';
import 'package:catechesis/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        CatechesisCard(),
      ]
    );
  }
}

class CatechesisCard extends StatefulWidget {
  const CatechesisCard({Key? key}) : super(key: key);

  @override
  State<CatechesisCard> createState() => _CatechesisCardState();
}

class _CatechesisCardState extends State<CatechesisCard> {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: AspectRatio(
        aspectRatio: 1.85,
        child: Container(
          decoration: BoxDecoration(
            color: cardOptions[0].color,
            borderRadius: BorderRadius.circular(defaultSize * 1.8),
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(defaultSize * 1),
                  child: Column(
                    children: <Widget>[
                      const Spacer(),
                      Text(
                        cardOptions[0].title, 
                        style: TextStyle(
                          fontSize: defaultSize * 2.2, 
                          color: Colors.white,
                          //maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(height: defaultSize * 0.8), //espaçamento entre título e subtítulo
                      Text(
                        cardOptions[0].description,
                        style: const TextStyle(
                          color: AppColors.background,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
              SizedBox(width: defaultSize * 0.5), //ajustar na horizontal os textos
            ],
          )
        ),


        
      ),
    );
  }
}