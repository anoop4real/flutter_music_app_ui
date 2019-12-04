import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_music_app/module/home/models/most_popular_albums.dart';
import 'package:flutter_music_app/module/home/models/recently_played.dart';
import 'package:flutter_music_app/module/home/models/trending_albums.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_music_app/module/home/widgets/favorite_list.dart';
import 'package:flutter_music_app/module/home/widgets/recent_carousel.dart';
import 'package:flutter_music_app/module/home/widgets/trending_carousel.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  TrendingAlbumlist albumList;
  PlaylistCollection playlistCollection;
  PopularAlbums popularAlbums;

  Future<void> getData() async {
    final String data =
        await rootBundle.loadString('assets/json/trending.json');
    final Map<String, dynamic> jsonResult = json.decode(data);
    albumList = TrendingAlbumlist.fromJson(jsonResult);
    print(albumList);

    final String data2 =
        await rootBundle.loadString('assets/json/recentlyPlayed.json');
    final Map<String, dynamic> jsonResult2 = json.decode(data2);
    playlistCollection = PlaylistCollection.fromJson(jsonResult2);
    print(playlistCollection);

    final String data3 =
        await rootBundle.loadString('assets/json/mostPopularAlbums.json');
    final Map<String, dynamic> jsonResult3 = json.decode(data3);
    popularAlbums = PopularAlbums.fromJson(jsonResult3);
    print(popularAlbums);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.grey[300],
                          blurRadius: 10.0,
                          offset: const Offset(0.0, 15.90))
                    ],
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40))),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      _buildProfile(),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(children: [
                        Text(
                          'Discover Music',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                              fontSize: 25),
                        ),
                      ]),
                      _buildTrendingCarousel(albumList),
                      const SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                  height: 180,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: _buildRecentlyPlayedCarousel(playlistCollection),
                  )),
              Container(
                  height: 300,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: _buildFavoriteListCarousel(popularAlbums),
                  )),
            ],
          ),
        ),
    );
  }

  Widget _buildProfile() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Expanded(
          child: Container(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Search',
                  hintText: 'Search',
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.redAccent),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(30.0)))),
            ),
          ),
        ),
        const SizedBox(
          width: 60,
        ),
        Container(
            width: 40.0,
            height: 40.0,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: ExactAssetImage('assets/images/profile.jpg'))))
      ],
    );
  }

  Widget _buildTrendingCarousel(TrendingAlbumlist albums) {
    if (albums != null) {
      return TrendingCarousel(albumList: albums.trending);
    } else {
      return const Center(
        child: Text('No Trending Albums'),
      );
    }
  }

  Widget _buildRecentlyPlayedCarousel(PlaylistCollection recentlyPalyedLists) {
    if (recentlyPalyedLists != null) {
      return RecentlyPlayedCarousel(
        recentlyPlayed: recentlyPalyedLists.playlists,
      );
    } else {
      return Center(
        child: Text('No Recent Playlist'),
      );
    }
  }

  Widget _buildFavoriteListCarousel(PopularAlbums popularAlbums) {
    if (popularAlbums != null) {
      return FavoriteList(loved:popularAlbums.loved ,);
    } else {
      return Center(
        child: Text('No Favorites'),
      );
    }
  }
}

/*
  fetchData() async {
    Dio dio = Dio();
    var url =
        'https://theaudiodb.com/api/v1/json/1/trending.php?country=us&type=itunes&format=albums';
    var encoded = Uri.encodeFull(url);
    Response response = await dio.get(encoded);

    print(response.data);
    albumList = TrendingAlbumlist.fromJson(response.data);
    print(albumList);
  }


  Future<String> getData() async {
    var response = await http.get(
        Uri.encodeFull('https://jsonplaceholder.typicode.com/posts'),
        headers: {"Accept": "application/json"});
    var data = json.decode(response.body);

    //albumList = TrendingAlbumlist.fromJson(json.decode(response.body));
    //print(albumList);

    return data;
  }

   */
