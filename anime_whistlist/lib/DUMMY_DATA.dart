import 'package:anime_whistlist/model/anime.dart';
import 'package:anime_whistlist/model/categoryAnime.dart';
import 'package:flutter/material.dart';

const DUMMY_CATANIME = [
  CategoryAnime(
    id: 'C1',
    title: 'Aksi',
    color: Colors.red,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/thumb/3/3e/Sword_Art_Online_light_novel_volume_1_cover.jpg/220px-Sword_Art_Online_light_novel_volume_1_cover.jpg',
    posisi: [2, 2],
  ),
  CategoryAnime(
      id: 'C2',
      title: 'Petualangan',
      color: Colors.orange,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/en/thumb/d/db/Spirited_Away_Japanese_poster.png/220px-Spirited_Away_Japanese_poster.png',
      posisi: [2, 1]),
  CategoryAnime(
    id: 'C3',
    title: 'Mecha',
    color: Colors.tealAccent,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/thumb/2/20/Gurren_Lagann_key_visual.jpg/220px-Gurren_Lagann_key_visual.jpg',
    posisi: [1, 2],
  ),
  CategoryAnime(
      id: 'C4',
      title: 'Cars',
      color: Colors.red,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/en/thumb/a/a6/InitialD_vol1_Cover.jpg/220px-InitialD_vol1_Cover.jpg',
      posisi: [1, 1]),
  CategoryAnime(
    id: 'C5',
    title: 'Drama',
    color: Colors.deepPurpleAccent,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/thumb/c/c6/AnoHana_DVD_vol_1.jpg/220px-AnoHana_DVD_vol_1.jpg',
    posisi: [2, 2],
  ),
  CategoryAnime(
      id: 'C6',
      title: 'Fantasi',
      color: Colors.deepOrange,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/en/thumb/6/62/Ky%C5%8Dkai_no_Kanata_volume_1_cover.jpg/220px-Ky%C5%8Dkai_no_Kanata_volume_1_cover.jpg',
      posisi: [1, 2]),
  CategoryAnime(
      id: 'C7',
      title: 'School Life',
      color: Colors.amberAccent,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/en/thumb/5/5a/Boku_no_Hero_Academia_Volume_1.png/220px-Boku_no_Hero_Academia_Volume_1.png',
      posisi: [1, 1]),
  CategoryAnime(
      id: 'C8',
      title: 'Slice of Life',
      color: Colors.orangeAccent,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/en/thumb/c/c9/My_Love_Story_manga.jpg/220px-My_Love_Story_manga.jpg',
      posisi: [3, 1]),
  CategoryAnime(
      id: 'C9',
      title: 'Samurai',
      color: Colors.blueAccent,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/en/thumb/e/ee/Gintamavol01cover.jpg/220px-Gintamavol01cover.jpg',
      posisi: [1, 1]),
  CategoryAnime(
    id: 'C10',
    title: 'Sejarah',
    color: Colors.brown,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/thumb/9/98/Golden_Kamuy_v1_cover.jpg/220px-Golden_Kamuy_v1_cover.jpg',
    posisi: [4, 1],
  ),
];

const DUMMY_ANIME = [
  Anime(
    id: 'A_1',
    categories: 'C1',
    title: 'Sword Art Online',
    episode: [
      {'episode': '1', 'judul': 'The World of Swords'},
      {'episode': '2', 'judul': 'Beater'},
      {'episode': '3', 'judul': 'The Red-Nosed Reindeer'},
      {'episode': '4', 'judul': 'The Black Swordsman'},
      {'episode': '5', 'judul': 'Murder in the Safe Zone'},
    ],
    tokoh: [
      {'tokoh': 'Kazuto Kirigaya', 'aktor': 'Matsuoka Yoshisuda'},
      {'tokoh': 'Yuuki Asuna', 'aktor': 'Tomatsu Haruka'},
    ],
    pengarang: 'Makoto Shinkai',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/thumb/3/3e/Sword_Art_Online_light_novel_volume_1_cover.jpg/220px-Sword_Art_Online_light_novel_volume_1_cover.jpg',
    ratingMyAnimeList: 9,
    jmlEpisode: 73,
    sinopsis:
        'In the year 2022, virtual reality has progressed by leaps and bounds, and a massive online role-playing '
        'game called Sword Art Online (SAO) is launched. With the aid of "NerveGear" technology, players can '
        'control their avatars within the game using nothing but their own thoughts Kazuto Kirigaya, '
        'nicknamed "Kirito," is among the lucky few enthusiasts who get their hands on the first shipment '
        'of the game. He logs in to find himself, with ten-thousand others, in the scenic and elaborate world '
        'of Aincrad, one full of fantastic medieval weapons and gruesome monsters. However, in a cruel turn '
        'of events, the players soon realize they cannot log out; the games creator has trapped them in his new '
        'world until they complete all one hundred levels of the game.In order to escape Aincrad, '
        'Kirito will now have to interact and cooperate with his fellow players. Some are allies, while '
        'others are foes, like Asuna Yuuki, who commands the leading group attempting to escape from the ruthless game. '
        'To make matters worse, Sword Art Online is not all fun and games: if they die in Aincrad, they die in real life. '
        'Kirito must adapt to his new reality, fight for his survival, and hopefully break free from his virtual hell.',
    isSubIndo: true,
    isOngoing: false,
    isSU: false,
  ),
  Anime(
    id: 'A_2',
    categories: 'C1',
    title: 'One Puch Man',
    episode: [
      {'episode': '1', 'judul': 'The Strongest Man'},
      {'episode': '2', 'judul': 'The Lone Cyborg'},
      {'episode': '3', 'judul': 'The Obsessive Scientist'},
      {'episode': '4', 'judul': 'The Modern Ninja'},
      {'episode': '5', 'judul': 'The Ultimate Mentor'},
    ],
    tokoh: [
      {'tokoh': 'Saitama', 'aktor': 'Makoto Furukawa'},
      {'tokoh': 'Genos', 'aktor': 'Kaito Ishikawa'},
    ],
    pengarang: 'Ghibli Studios',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/thumb/c/c3/OnePunchMan_manga_cover.png/220px-OnePunchMan_manga_cover.png',
    ratingMyAnimeList: 8,
    jmlEpisode: 24,
    sinopsis:
        'The seemingly ordinary and unimpressive Saitama has a rather unique hobby: being a hero. '
        'In order to pursue his childhood dream, he trained relentlessly for three years—and '
        'lost all of his hair in the process. Now, Saitama is incredibly powerful, so much so '
        'that no enemy is able to defeat him in battle. In fact, all it takes to defeat evildoers '
        'with just one punch has led to an unexpected problem—he is no longer able to enjoy the '
        'thrill of battling and has become quite bored '
        'This all changes with the arrival of Genos, a 19-year-old cyborg, who wishes to be Saitamas '
        'disciple after seeing what he is capable of. Genos proposes that the two join the Hero Association '
        'in order to become certified heroes that will be recognized for their positive contributions to '
        'society, and Saitama, shocked that no one knows who he is, quickly agrees. And thus begins the '
        'story of One Punch Man, an action-comedy that follows an eccentric individual who longs to fight '
        'strong enemies that can hopefully give him the excitement he once felt and just maybe, '
        'hell become popular in the process',
    isSubIndo: true,
    isOngoing: false,
    isSU: true,
  ),
  Anime(
    id: 'A_3',
    categories: 'C2',
    title: 'Shingeki no Kyojin',
    episode: [
      {
        'episode': '1',
        'judul': 'To You, in 2000 Years: The Fall of Shiganshina, Part 1',
      },
      {
        'episode': '2',
        'judul': 'That Day: The Fall of Shiganshina, Part 2',
      },
      {
        'episode': '3',
        'judul': '"A Dim Light Amid Despair: Humanity\'s Comeback, Part 1',
      },
    ],
    tokoh: [
      {'tokoh': 'Mikasa Ackerman', 'aktor': 'Ishikawa,Yu'},
      {'tokoh': 'Eren Yeager', 'aktor': 'Yuku Kaji'},
      {'tokoh': 'Armin Alert', 'aktor': 'Marina Inoue'},
    ],
    pengarang: 'Akiyama',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/thumb/d/d6/Shingeki_no_Kyojin_manga_volume_1.jpg/220px-Shingeki_no_Kyojin_manga_volume_1.jpg',
    ratingMyAnimeList: 9,
    jmlEpisode: 64,
    sinopsis: 'Centuries ago, mankind was slaughtered to near extinction '
        'by monstrous humanoid creatures called titans, forcing humans to hide in '
        'fear behind enormous concentric walls. What makes these giants truly terrifying'
        ' is that their taste for human flesh is not born out of hunger but what appears '
        'to be out of pleasure. To ensure their survival, the remnants of humanity began '
        'living within defensive barriers, resulting in one hundred years without a single '
        'titan encounter. However, that fragile calm is soon shattered when a colossal titan '
        'manages to breach the supposedly impregnable outer wall, reigniting the fight for '
        'survival against the man-eating abominations After witnessing a horrific personal '
        'loss at the hands of the invading creatures, Eren Yeager dedicates his life to their'
        ' eradication by enlisting into the Survey Corps, an elite military unit that combats the '
        'merciless humanoids outside the protection of the walls. Based on Hajime Isayama\'s '
        'award-winning manga, Shingeki no Kyojin follows Eren, along with his adopted sister '
        'Mikasa Ackerman and his childhood friend Armin Arlert, as they join the brutal war '
        'against the titans and race to discover a way of defeating them before the last walls are breached.',
    isSubIndo: true,
    isOngoing: false,
    isSU: false,
  ),
  Anime(
    id: 'A_4',
    categories: 'C2',
    title: 'Boruto: Naruto Next Generations',
    episode: [
      {'episode': '1', 'judul': 'Boruto Uzumaki!'},
      {'episode': '2', 'judul': 'The Hokage\'s Son'},
      {'episode': '', 'judul': 'Metal Lee Goes Wild'},
    ],
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/thumb/d/db/Boruto_manga_vol_1.jpg/220px-Boruto_manga_vol_1.jpg',
    tokoh: [
      {
        'tokoh': 'Uzumaki Boruto',
        'aktor': 'Sanpei Yuuko',
      },
      {
        'tokoh': 'Uchiha Sarada',
        'aktor': 'Kichicki Kokoro',
      },
    ],
    pengarang: 'Masahsi Kisimoto',
    ratingMyAnimeList: 3,
    jmlEpisode: 211,
    sinopsis:
        'Following the successful end of the Fourth Shinobi World War, Konohagakure has been enjoying a '
        'period of peace, prosperity, and extraordinary technological advancement. '
        'This is all due to the efforts of the Allied Shinobi Forces and the village\'s '
        'Seventh Hokage, Naruto Uzumaki. Now resembling a modern metropolis, '
        'Konohagakure has changed, particularly the life of a shinobi. Under the watchful '
        'eye of Naruto and his old comrades, a new generation of shinobi has stepped up to learn the ways of the ninja.',
    isSubIndo: true,
    isOngoing: true,
    isSU: true,
  )
];
