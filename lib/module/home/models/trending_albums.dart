import 'package:json_annotation/json_annotation.dart';

part 'trending_albums.g.dart';
@JsonSerializable()
class TrendingAlbumlist {
  TrendingAlbumlist({this.trending});

  factory TrendingAlbumlist.fromJson(Map<String, dynamic> json) => _$TrendingAlbumlistFromJson(json);

  List<Trending> trending;
  Map<String, dynamic> toJson() => _$TrendingAlbumlistToJson(this);
}
// TODO(username): Handle null and missing keys
@JsonSerializable()
class Trending {

  Trending(
      {this.idTrend,
        this.intChartPlace,
        this.idArtist,
        this.idAlbum,
        this.idTrack,
        this.strArtistMBID,
        this.strAlbumMBID,
        this.strTrackMBID,
        this.strArtist,
        this.strAlbum,
        this.strTrack,
        this.strArtistThumb,
        this.strAlbumThumb,
        this.strTrackThumb,
        this.strCountry,
        this.strType,
        this.intWeek,
        this.dateAdded});

  factory Trending.fromJson(Map<String, dynamic> json) => _$TrendingFromJson(json) ;

  String idTrend;
  String intChartPlace;
  String idArtist;
  String idAlbum;
  String idTrack;
  String strArtistMBID;
  String strAlbumMBID;
  String strTrackMBID;
  String strArtist;
  String strAlbum;
  String strTrack;
  String strArtistThumb;
  String strAlbumThumb;
  String strTrackThumb;
  String strCountry;
  String strType;
  String intWeek;
  String dateAdded;


  Map<String, dynamic> toJson() => _$TrendingToJson(this);
}
