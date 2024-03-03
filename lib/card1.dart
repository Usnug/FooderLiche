import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

class Card1 extends StatelessWidget {
    const Card1({super.key});
    final String category = 'Editor\'s Choice';
    final String title = 'The Art of Dough';
    final String description = 'Learn to make the perfect bread.';
    final String chef = 'Ray Wenderlich';
    @override
    Widget build(BuildContext context) {
        // 3
        return Center(
          // TODO: Card1 Decorate Container
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
              image: DecorationImage(
                image: AssetImage('assets/mag1.png'), //5
                fit: BoxFit.cover,//6
              ),
              //7
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Stack(
              children: [
                //8
              Text(
                category,
                style: FooderlichTheme.darkTextTheme.bodyLarge,
              ),
              //9
              Positioned(
                top: 20,
                child: Text(
                  title,
                  style: FooderlichTheme.darkTextTheme.displayMedium,)
              ),
              //10
              Positioned(
                bottom: 30,
                right: 0,
                child:Text(
                    description,
                    style: FooderlichTheme.darkTextTheme.bodyLarge,),
              ),
              //11
              Positioned(
                bottom: 10,
                right: 0,
                child:Text(
                    chef,
                    style: FooderlichTheme.darkTextTheme.headlineSmall,
                  ),
                )
            ]),
          ),
        );
    }
}