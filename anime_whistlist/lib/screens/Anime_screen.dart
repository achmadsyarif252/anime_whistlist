import 'package:anime_whistlist/DUMMY_DATA.dart';
import 'package:anime_whistlist/model/anime.dart';
import 'package:anime_whistlist/screens/detail_anime_screen.dart';
import 'package:anime_whistlist/widgets/main_drawer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AnimeScreen extends StatefulWidget {
  static const routeName = '/Anime-screen';

  @override
  _AnimeScreenState createState() => _AnimeScreenState();
}

class _AnimeScreenState extends State<AnimeScreen> {
  bool isLove = false;

  @override
  Widget build(BuildContext context) {
    final String categoryId =
        ModalRoute.of(context)!.settings.arguments as String;
    final title = DUMMY_CATANIME.firstWhere((cat) => cat.id == categoryId);
    final _listAnime = DUMMY_ANIME.where((anime) {
      return anime.categories == categoryId;
    }).toList();
    return Scaffold(
      drawer: DrawerMain(),
      backgroundColor: Colors.white.withOpacity(0.98),
      body: SingleChildScrollView(
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
                      hintText: 'Search in ${title.title} Kategori',
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
                            arguments: _listAnime[index].id,
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 10.0,
                          ),
                          height: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 120,
                                height: 150,
                                child: CachedNetworkImage(
                                  imageUrl: _listAnime[index].imageUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      _listAnime[index].title,
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
                                          'Rating     : ${_listAnime[index].ratingMyAnimeList}/10',
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Episode   : ${_listAnime[index].jmlEpisode}',
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Author     : ${_listAnime[index].pengarang}',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      softWrap: true,
                                      overflow: TextOverflow.fade,
                                    ),
                                    Text(
                                      'Sinopsis  :${_listAnime[index].sinopsis}',
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
                              Align(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                  color: Colors.red,
                                  onPressed: () {
                                    setState(() {
                                      isLove = !isLove;
                                    });
                                  },
                                  icon: Icon(
                                    !isLove
                                        ? Icons.favorite_border_outlined
                                        : Icons.favorite,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: _listAnime.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
