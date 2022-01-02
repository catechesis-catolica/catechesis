import 'package:catechesis/modules/home/components/body.dart';
import 'package:catechesis/modules/home/home_controller.dart';
import 'package:catechesis/shared/models/user_model.dart';
import 'package:catechesis/shared/themes/app_text_styles.dart';
import 'package:catechesis/shared/themes/appcolors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final UserModel user;
  const HomePage({Key? key, required this.user}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  final pages = [
    Container(
      color: Colors.white,
    ),
    Container(color: Colors.blue),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(152),
        child: Container(
          height: 152,
          color: AppColors.primary,
          child: Center(
            child: ListTile(
              title: Text.rich(
                TextSpan(
                  text: "Olá, ",
                  style: TextStyles.titleRegular02,
                  children: [
                    TextSpan(
                      text: "${widget.user.name}",
                      style: TextStyles.titleBoldBackground)
                  ]),
              ),
              subtitle: Text(
                "Conheça a verdadeira fé católica", 
                style: TextStyles.captionShape,
              ),
              trailing: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(color: Colors.black,
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(image: NetworkImage(widget.user.photoURL!))),
              ),
            ),
          ),
        ),
      ),
      body: const Body(), 
      //body: pages[controller.currentPage], //MUDAR DE PÁGINA
      
      bottomNavigationBar: SizedBox(
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          IconButton(
            onPressed: (){
              controller.setPage(0);
              setState(() {});
            }, 
            icon: const Icon(
              Icons.home,
              color: AppColors.primary,
            )),
            GestureDetector(
              onTap: () {
                print("Clicou");
              },
              child: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(5)),
                child: const Icon(
                  Icons.home,
                  color: AppColors.background,
                ),
              ),
            ),
            IconButton(
            onPressed: (){
              controller.setPage(1);
              setState(() {});
            }, 
            icon: const Icon(
              Icons.home
            )),
          ], 
        ),
      ),
    );
  }
}