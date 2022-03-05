import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(
            image: AssetImage('assets/mag2.png'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: const BoxConstraints.expand(
          height: 450,
          width: 350,
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Recipe Trends',
                    style: FooderlichTheme.darkTextTheme.headline2,
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: Wrap(
                      alignment: WrapAlignment.start,
                      spacing: 12,
                      runSpacing: 12,
                      children: [
                        Chip(
                          label: Text(
                            'Healthy',
                            style: FooderlichTheme.darkTextTheme.bodyText1,
                          ),
                          backgroundColor: Colors.black.withOpacity(0.7),
                          onDeleted: () {
                            print('delete');
                          },
                        ),
                        Chip(
                          label: Text(
                            'Vegan',
                            style: FooderlichTheme.darkTextTheme.bodyText1,
                          ),
                          backgroundColor: Colors.black.withOpacity(0.7),
                          onDeleted: () {
                            print('delete');
                          },
                        ),
                        Chip(
                          label: Text(
                            'Carrots',
                            style: FooderlichTheme.darkTextTheme.bodyText1,
                          ),
                          backgroundColor: Colors.black.withOpacity(0.7),
                        ),
                        Chip(
                          label: Text(
                            'French',
                            style: FooderlichTheme.darkTextTheme.bodyText1,
                          ),
                          backgroundColor: Colors.black.withOpacity(0.7),
                        ),
                        Chip(
                          label: Text(
                            'Chinese',
                            style: FooderlichTheme.darkTextTheme.bodyText1,
                          ),
                          backgroundColor: Colors.black.withOpacity(0.7),
                        ),
                        Chip(
                          label: Text(
                            'Apple',
                            style: FooderlichTheme.darkTextTheme.bodyText1,
                          ),
                          backgroundColor: Colors.black.withOpacity(0.7),
                        ),
                        Chip(
                          label: Text(
                            'Banana',
                            style: FooderlichTheme.darkTextTheme.bodyText1,
                          ),
                          backgroundColor: Colors.black.withOpacity(0.7),
                        ),
                        Chip(
                          label: Text(
                            'Good',
                            style: FooderlichTheme.darkTextTheme.bodyText1,
                          ),
                          backgroundColor: Colors.black.withOpacity(0.7),
                        ),
                        Chip(
                          label: Text(
                            'GoodGsdfsdfsddfsdfsdfsdfsdasdfsdfsdfsdfsdfsdfsdfs'
                            'dfsdf',
                            style: FooderlichTheme.darkTextTheme.bodyText1,
                          ),
                          backgroundColor: Colors.black.withOpacity(0.7),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
