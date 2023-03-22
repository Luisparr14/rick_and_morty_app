import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/components/card.dart';
import 'package:rick_and_morty_app/components/listview.dart';
import 'package:rick_and_morty_app/models/models.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // get arguments from route
    final Character character = ModalRoute.of(context)!.settings.arguments as Character;

    return Scaffold(
      appBar: AppBar(
        title: Text('Details of ${character.name}'),
      ),
      body: Column(children: [
        Center(child: CardComponent(character: character)),
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            // Group: Button to make visible, episode list, location list
            ElevatedButton(
              onPressed: () {},
              child: const Text('Episodes'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Locations'),
            ),
          ],
        ),
        ListViewComponent()
      ]),
    );
  }
}
