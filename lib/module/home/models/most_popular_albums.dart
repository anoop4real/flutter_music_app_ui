import 'package:json_annotation/json_annotation.dart';

part 'most_popular_albums.g.dart';

@JsonSerializable()
class PopularAlbums {
  PopularAlbums({this.loved});
  factory PopularAlbums.fromJson(Map<String, dynamic> json) => _$PopularAlbumsFromJson(json);
  // TODO(dev): Change the name LOved to something meaningful
  List<Loved> loved;
  Map<String, dynamic> toJson() => _$PopularAlbumsToJson(this);
}

@JsonSerializable()
class Loved {
  Loved(
      {this.idAlbum,
        this.idArtist,
        this.idLabel,
        this.strAlbum,
        this.strAlbumStripped,
        this.strArtist,
        this.strArtistStripped,
        this.intYearReleased,
        this.strStyle,
        this.strGenre,
        this.strLabel,
        this.strReleaseFormat,
        this.intSales,
        this.strAlbumThumb,
        this.strAlbumThumbHQ,
        this.strAlbumThumbBack,
        this.strAlbumCDart,
        this.strAlbumSpine,
        this.strAlbum3DCase,
        this.strAlbum3DFlat,
        this.strAlbum3DFace,
        this.strAlbum3DThumb,
        this.strDescription,
        this.strDescriptionDE,
        this.strDescriptionFR,
        this.strDescriptionCN,
        this.strDescriptionIT,
        this.strDescriptionJP,
        this.strDescriptionRU,
        this.strDescriptionES,
        this.strDescriptionPT,
        this.strDescriptionSE,
        this.strDescriptionNL,
        this.strDescriptionHU,
        this.strDescriptionNO,
        this.strDescriptionIL,
        this.strDescriptionPL,
        this.intLoved,
        this.intScore,
        this.intScoreVotes,
        this.strReview,
        this.strMood,
        this.strTheme,
        this.strSpeed,
        this.strLocation,
        this.strMusicBrainzID,
        this.strMusicBrainzArtistID,
        this.strAllMusicID,
        this.strBBCReviewID,
        this.strRateYourMusicID,
        this.strDiscogsID,
        this.strWikidataID,
        this.strWikipediaID,
        this.strGeniusID,
        this.strLyricWikiID,
        this.strMusicMozID,
        this.strItunesID,
        this.strAmazonID,
        this.strLocked});

  factory Loved.fromJson(Map<String, dynamic> json) => _$LovedFromJson(json);

  String idAlbum;
  String idArtist;
  String idLabel;
  String strAlbum;
  String strAlbumStripped;
  String strArtist;
  String strArtistStripped;
  String intYearReleased;
  String strStyle;
  String strGenre;
  String strLabel;
  String strReleaseFormat;
  String intSales;
  String strAlbumThumb;
  String strAlbumThumbHQ;
  String strAlbumThumbBack;
  String strAlbumCDart;
  String strAlbumSpine;
  String strAlbum3DCase;
  String strAlbum3DFlat;
  String strAlbum3DFace;
  String strAlbum3DThumb;
  String strDescription;
  String strDescriptionDE;
  String strDescriptionFR;
  String strDescriptionCN;
  String strDescriptionIT;
  String strDescriptionJP;
  String strDescriptionRU;
  String strDescriptionES;
  String strDescriptionPT;
  String strDescriptionSE;
  String strDescriptionNL;
  String strDescriptionHU;
  String strDescriptionNO;
  String strDescriptionIL;
  String strDescriptionPL;
  String intLoved;
  String intScore;
  String intScoreVotes;
  String strReview;
  String strMood;
  String strTheme;
  String strSpeed;
  String strLocation;
  String strMusicBrainzID;
  String strMusicBrainzArtistID;
  String strAllMusicID;
  String strBBCReviewID;
  String strRateYourMusicID;
  String strDiscogsID;
  String strWikidataID;
  String strWikipediaID;
  String strGeniusID;
  String strLyricWikiID;
  String strMusicMozID;
  String strItunesID;
  String strAmazonID;
  String strLocked;



  Map<String, dynamic> toJson() => _$LovedToJson(this);
}

