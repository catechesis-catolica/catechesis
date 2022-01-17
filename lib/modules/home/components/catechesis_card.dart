import 'package:catechesis/shared/models/card_options.dart';
import 'package:catechesis/shared/themes/appcolors.dart';
import 'package:catechesis/size_config.dart';
import 'package:flutter/material.dart';

class CatechesisCard extends StatelessWidget {
  final CardOptions cardOption;

  const CatechesisCard({Key? key, required this.cardOption}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Container(
        decoration: BoxDecoration(
          color: cardOption.color,
          borderRadius: BorderRadius.circular(defaultSize * 1.8),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(defaultSize * 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Spacer(),
                    Text(
                      cardOption.title, 
                      style: TextStyle(
                        fontSize: defaultSize * 2.2, 
                        color: Colors.white,
                        //maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(height: defaultSize * 0.8), //espaçamento entre título e subtítulo
                    Text(
                      cardOption.description,
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
    );
  }
}