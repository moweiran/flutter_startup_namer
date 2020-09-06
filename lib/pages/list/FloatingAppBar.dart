import 'package:flutter/material.dart';

class FloatingAppBarPage extends StatefulWidget {
  @override
  _FloatingAppBarStatePage createState() => _FloatingAppBarStatePage();
}

class _FloatingAppBarStatePage extends State<FloatingAppBarPage> {
  final title = 'Floating App Bar';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // No appbar provided to the Scaffold, only a body with a
      // CustomScrollView.
      body: CustomScrollView(
        slivers: <Widget>[
          // Add the app bar to the CustomScrollView.
          SliverAppBar(
              // Provide a standard title.
              title: Text(title),
              // Allows the user to reveal the app bar if they begin scrolling
              // back up the list of items.
              floating: true,
              pinned: true,
              snap: false,
              // Display a placeholder widget to visualize the shrinking size.
              flexibleSpace: Container(
                padding: EdgeInsets.only(top: 50),
                child: GridView.count(
                  // Create a grid with 2 columns. If you change the scrollDirection to
                  // horizontal, this produces 2 rows.
                  crossAxisCount: 4,
                  // Generate 100 widgets that display their index in the List.
                  children: List.generate(4, (index) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.red,
                        child: Text(
                          'Item $index',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ),
                    );
                  }),
                ),
              ),
              // Make the initial height of the SliverAppBar larger than normal.
              expandedHeight: 150,
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.add_circle),
                  tooltip: 'Add new entry',
                  onPressed: () {/* ... */},
                ),
              ]),
          // Next, create a SliverList
          SliverList(
            // Use a delegate to build items as they're scrolled on screen.
            delegate: SliverChildBuilderDelegate(
              // The builder function returns a ListTile with a title that
              // displays the index of the current item.
              (context, index) => ListTile(
                title: Text('Item #$index'),
              ),
              // Builds 1000 ListTiles
              childCount: 1000,
            ),
          ),
        ],
      ),
    );
  }
}
