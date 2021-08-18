import 'package:anime_whistlist/DUMMY_DATA.dart';
import 'package:anime_whistlist/screens/anime_whistlist.dart';
import 'package:anime_whistlist/widgets/detail.dart';
import 'package:anime_whistlist/widgets/episode_tokoh.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DetailAnimeScreen extends StatefulWidget {
  final Function favoriteAnime;
  final Function isFavorite;
  final Function whistList;

  DetailAnimeScreen(this.favoriteAnime, this.isFavorite, this.whistList);

  static const routeName = '/detail-anime-screen';

  @override
  _DetailAnimeScreenState createState() => _DetailAnimeScreenState();
}

class _DetailAnimeScreenState extends State<DetailAnimeScreen> {
  @override
  int _selectedIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    final idAnime = ModalRoute.of(context)!.settings.arguments as String;
    final detailAnime = DUMMY_ANIME.firstWhere((anime) {
      return anime.id == idAnime;
    });

    List<Widget> _pages = [
      DetailWidget(detailAnime),
      DetailEpisodeTokoh(detailAnime),
    ];

    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amberAccent,
          onPressed: () => widget.favoriteAnime(idAnime),
          child: Icon(
              widget.isFavorite(idAnime) ? Icons.star : Icons.star_border)),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Detail Anime',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton<Widget>(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            color: Colors.white,
            itemBuilder: (context) => [
              PopupMenuItem(
                child: GestureDetector(
                    onTap: () {
                      widget.whistList(idAnime);
                      showDialog(
                          context: context,
                          builder: (_) {
                            return AlertDialog(
                              content:
                                  Text('Berhasil Ditambahkan ke whistList'),
                              title: Text('Success'),
                              actions: [
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('OK'),
                                ),
                              ],
                            );
                          });
                    },
                    child: Text('Add WhistList')),
              ),
              PopupMenuItem(
                child: Text('Give Rating'),
              ),
            ],
          )
        ],
        leading: IconButton(
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      backgroundColor: Colors.white.withOpacity(0.95),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _selectPage,
        items: [
          BottomNavigationBarItem(
            title: Text('Detail'),
            icon: Icon(
              Icons.view_list,
            ),
          ),
          BottomNavigationBarItem(
            title: Text('Episode'),
            icon: Icon(
              Icons.account_circle_outlined,
            ),
          ),
        ],
      ),
    );
  }
}
