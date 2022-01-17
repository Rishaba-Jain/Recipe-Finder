import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MyRecipesList extends StatefulWidget {
  const MyRecipesList({Key? key}) : super(key: key);

  @override
  _MyRecipesListState createState() => _MyRecipesListState();
}

class _MyRecipesListState extends State<MyRecipesList> {
  // TODO 1
  List<String> recipes = [];

  // TODO 2
  @override
  void initState() {
    super.initState();
    recipes = <String>[];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: _buildRecipeList(context),
    );
  }

  Widget _buildRecipeList(BuildContext context) {
    // TODO 3
    return ListView.builder(
      itemCount: recipes.length,
      itemBuilder: (BuildContext context, int index) {
        // TODO 4
        return SizedBox(
          height: 100,
          child: Slidable(
            actionPane: const SlidableDrawerActionPane(),
            actionExtentRatio: 0.25,
            child: Card(
              elevation: 1.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.white,
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CachedNetworkImage(
                      // TODO 5
                      imageUrl:
                          'https://www.edamam.com/web-img/76e/76e01f7ebf4796a1ddeb075bf78989f2.jpg',
                      height: 120,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                    title: const Text('my_recipes_list.dart'),
                  ),
                ),
              ),
            ),
            actions: <Widget>[
              IconSlideAction(
                caption: 'Delete',
                color: Colors.transparent,
                foregroundColor: Colors.black,
                iconWidget: const Icon(Icons.delete, color: Colors.red),
                // TODO 7
                onTap: () {},
              ),
            ],
            secondaryActions: <Widget>[
              IconSlideAction(
                caption: 'Delete',
                color: Colors.transparent,
                foregroundColor: Colors.black,
                iconWidget: const Icon(Icons.delete, color: Colors.red),
                // TODO 8
                onTap: () {},
              ),
            ],
          ),
        );
      },
    );
    // TODO 9
  }
}
