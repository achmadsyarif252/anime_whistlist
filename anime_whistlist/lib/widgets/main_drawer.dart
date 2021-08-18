import 'package:anime_whistlist/screens/anime_whistlist.dart';
import 'package:anime_whistlist/screens/favorite_anime_screen.dart';
import 'package:anime_whistlist/screens/filter_screen.dart';
import 'package:flutter/material.dart';

class DrawerMain extends StatelessWidget {
  Widget buildListTile(String teks, IconData icon, Function fungsi) {
    return Column(
      children: [
        ListTile(
          onTap: () => fungsi(),
          leading: Icon(
            icon,
          ),
          title: Text(teks),
        ),
        Divider(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.blue.withOpacity(0.8),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            height: 120,
            child: Center(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 50.0,
                  child: Icon(
                    Icons.account_circle_rounded,
                  ),
                ),
                title: Text(
                  'AnimeZ',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  'Best Anime Apps',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          buildListTile('Home', Icons.home, () {
            Navigator.of(context).pop();
          }),
          buildListTile('Filters', Icons.settings, () {
            Navigator.of(context).pushNamed(FilterScreen.routeName);
          }),
          buildListTile('Favorites', Icons.favorite, () {
            Navigator.of(context).pushNamed(FavoriteAnimeScreen.routeName);
          }),
          buildListTile('WhistList', Icons.shopping_cart, () {
            Navigator.of(context).pushNamed(WhistListAnime.routeName);
          }),
        ],
      ),
    );
  }
}
