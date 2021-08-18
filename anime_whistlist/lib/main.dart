import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../model/anime.dart';
import '../screens/anime_whistlist.dart';
import '../screens/favorite_anime_screen.dart';
import '../screens/filter_screen.dart';

import '../DUMMY_DATA.dart';
import '../screens/Anime_screen.dart';
import '../screens/detail_anime_screen.dart';
import '../widgets/main_drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Anime> _favoriteAnime = [];
  List<Anime> _whistListAnime = [];

  // Map<String, bool>? _filters = {
  //   'subIndo': false,
  //   'onGoing': false,
  //   'isSu': false,
  // };

  void toggleFavorite(String idAnime) {
    final existingIndex =
        _favoriteAnime.indexWhere((anime) => anime.id == idAnime);
    if (existingIndex >= 0) {
      setState(() {
        _favoriteAnime.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoriteAnime
            .add(DUMMY_ANIME.firstWhere((anime) => anime.id == idAnime));
      });
    }
  }

  void _addwhistList(String id) {
    final existingId = _whistListAnime.indexWhere((anime) => anime.id == id);
    if (existingId == -1) {
      setState(() {
        _whistListAnime.add(DUMMY_ANIME.firstWhere((anime) => anime.id == id));
      });
    } else {
      print('Sudah ada di whistlist');
    }
  }

  bool _isFavorite(String id) {
    return _favoriteAnime.any((anime) => anime.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: AnimZon(),
        title: 'Animzon',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          AnimeScreen.routeName: (context) => AnimeScreen(),
          DetailAnimeScreen.routeName: (context) =>
              DetailAnimeScreen(toggleFavorite, _isFavorite, _addwhistList),
          FavoriteAnimeScreen.routeName: (context) =>
              FavoriteAnimeScreen(_favoriteAnime),
          WhistListAnime.routeName: (context) =>
              WhistListAnime(_whistListAnime),
          FilterScreen.routeName: (context) => FilterScreen(),
        });
  }
}

class AnimZon extends StatefulWidget {
  @override
  _AnimZonState createState() => _AnimZonState();
}

class _AnimZonState extends State<AnimZon> {
  List<StaggeredTile> _staggeredTiles = DUMMY_CATANIME.map((e) {
    return StaggeredTile.count(
      e.posisi[0],
      double.parse(
        e.posisi[1].toString(),
      ),
    );
  }).toList();

  List<Widget> _tiles = DUMMY_CATANIME.map((catAnime) {
    return ContainerCat(
        catAnime.id, catAnime.title, catAnime.color, catAnime.imageUrl);
  }).toList();

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      drawer: DrawerMain(),
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 20.0,
              ),
              Text(
                'Anime',
                style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 30.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(FavoriteAnimeScreen.routeName);
                },
                child: Text(
                  'Favorite',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          color: Colors.black.withOpacity(0.7),
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: Icon(
            Icons.apps_rounded,
            size: 40.0,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 12.0,
            ),
            child: IconButton(
              color: Colors.black.withOpacity(0.7),
              onPressed: () {
                Navigator.of(context).pushNamed(WhistListAnime.routeName);
              },
              icon: Icon(
                Icons.shopping_cart_rounded,
                size: 40.0,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 10.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 35.0,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      25.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            // height: MediaQuery.of(context).size.height * 0.6,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: new StaggeredGridView.count(
                crossAxisCount: 4,
                staggeredTiles: _staggeredTiles,
                children: _tiles,
                mainAxisSpacing: 12.0,
                crossAxisSpacing: 12.0,
                padding: const EdgeInsets.all(4.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContainerCat extends StatelessWidget {
  const ContainerCat(this.id, this.title, this.backgroundColor, this.imageUrl);

  final Color backgroundColor;
  final String imageUrl;
  final String id;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          AnimeScreen.routeName,
          arguments: id,
        );
      },
      splashColor: Colors.blue,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  10.0,
                ),
              ),
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
            ),
            width: double.infinity,
            height: double.infinity,
            child: Container(
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                fit: BoxFit.cover,
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 5.0, top: 3.5),
            height: 25.0,
            width: 100.0,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(50.0),
                bottomRight: Radius.circular(50.0),
              ),
            ),
            child: Text(
              title,
              softWrap: true,
              style: TextStyle(
                color: Colors.white,
              ),
              overflow: TextOverflow.fade,
            ),
          ),
        ],
      ),
    );
  }
}
