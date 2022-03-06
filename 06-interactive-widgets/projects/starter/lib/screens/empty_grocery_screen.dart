import 'package:flutter/material.dart';
import 'package:fooderlich/models/models.dart';
import 'package:provider/provider.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: AspectRatio(
              aspectRatio: 1.0 / 1.0,
              child: Image.asset('assets/fooderlich_assets/empty_list.png'),
            ),
          ),
          Text(
            'No Groceries',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Shopping for ingredients?\n'
            'Tap the + button to write them down!',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30.0),
          MaterialButton(
            textColor: Colors.white,
            color: Colors.green,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0))),
            child: const Text('Browse Recipes'),
            onPressed: () {
              Provider.of<TabManager>(context, listen: false).goToRecipe();
            },
          ),
        ],
      ),
    );
  }
}
