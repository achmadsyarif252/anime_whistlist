import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../model/anime.dart';
import 'detail_anime_screen.dart';

class FavoriteAnimeScreen extends StatelessWidget {
  static const routeName = '/favoriteScreen';
  final List<Anime> favoritesAnime;

  FavoriteAnimeScreen(this.favoritesAnime);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Anime'),
      ),
      body: favoritesAnime.isEmpty
          ? Center(
              child: Text(
                'Favorit Anime Kosong\nSilakan Tambahkan Anime Favorit',
                textAlign: TextAlign.center,
              ),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    elevation: 5.0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      color: Colors.white,
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.search),
                            hintText: 'Search in Favorites Anime',
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.close,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: ListView.builder(
                      itemBuilder: (ctx, index) {
                        return Container(
                          height: MediaQuery.of(context).size.height * 0.25,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 15.0,
                          ),
                          child: Card(
                            elevation: 3.0,
                            child: InkWell(
                              splashColor: Colors.blue,
                              onTap: () {
                                Navigator.of(context).pushNamed(
                                  DetailAnimeScreen.routeName,
                                  arguments: favoritesAnime[index].id,
                                );
                              },
                              child: Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                  vertical: 10.0,
                                ),
                                height: 150,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 120,
                                      height: 150,
                                      child: CachedNetworkImage(
                                        imageUrl:
                                            favoritesAnime[index].imageUrl,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(10.0),
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            favoritesAnime[index].title,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                            softWrap: true,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'Rating     : ${favoritesAnime[index].ratingMyAnimeList}/10',
                                                style: TextStyle(
                                                    fontSize: 15.0,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                              ),
                                            ],
                                          ),
                                          Text(
                                            'Episode   : ${favoritesAnime[index].jmlEpisode}',
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            'Author     : ${favoritesAnime[index].pengarang}',
                                            style: TextStyle(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            softWrap: true,
                                            overflow: TextOverflow.fade,
                                          ),
                                          Text(
                                            'Sinopsis  :${favoritesAnime[index].sinopsis}',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            softWrap: true,
                                            style: TextStyle(
                                              fontSize: 15.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: favoritesAnime.length,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
