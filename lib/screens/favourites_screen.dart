import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets/meal_item.dart';

class FavouritesScreen extends StatelessWidget {
  List<Meal> favouritesMeal;

  FavouritesScreen(this.favouritesMeal);

  @override
  Widget build(BuildContext context) {
    if (favouritesMeal.isEmpty) {
      return Center(
        child: Text('You have no favourites yet -  start adding some!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
            id: favouritesMeal[index].id,
            title: favouritesMeal[index].title,
            imageUrl: favouritesMeal[index].imageUrl,
            duration: favouritesMeal[index].duration,
            affordability: favouritesMeal[index].affordability,
            complexity: favouritesMeal[index].complexity,
          );
        },
        itemCount: favouritesMeal.length,
      );
    }
  }
}
