// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_albums.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendingAlbumlist _$TrendingAlbumlistFromJson(Map<String, dynamic> json) {
  return TrendingAlbumlist(
    trending: (json['trending'] as List)
        ?.map((e) =>
            e == null ? null : Trending.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TrendingAlbumlistToJson(TrendingAlbumlist instance) =>
    <String, dynamic>{
      'trending': instance.trending,
    };

Trending _$TrendingFromJson(Map<String, dynamic> json) {
  return Trending(
    idTrend: json['idTrend'] as String,
    intChartPlace: json['intChartPlace'] as String,
    idArtist: json['idArtist'] as String,
    idAlbum: json['idAlbum'] as String,
    idTrack: json['idTrack'] as String,
    strArtistMBID: json['strArtistMBID'] as String,
    strAlbumMBID: json['strAlbumMBID'] as String,
    strTrackMBID: json['strTrackMBID'] as String,
    strArtist: json['strArtist'] as String,
    strAlbum: json['strAlbum'] as String,
    strTrack: json['strTrack'] as String,
    strArtistThumb: json['strArtistThumb'] as String,
    strAlbumThumb: json['strAlbumThumb'] as String,
    strTrackThumb: json['strTrackThumb'] as String,
    strCountry: json['strCountry'] as String,
    strType: json['strType'] as String,
    intWeek: json['intWeek'] as String,
    dateAdded: json['dateAdded'] as String,
  );
}

Map<String, dynamic> _$TrendingToJson(Trending instance) => <String, dynamic>{
      'idTrend': instance.idTrend,
      'intChartPlace': instance.intChartPlace,
      'idArtist': instance.idArtist,
      'idAlbum': instance.idAlbum,
      'idTrack': instance.idTrack,
      'strArtistMBID': instance.strArtistMBID,
      'strAlbumMBID': instance.strAlbumMBID,
      'strTrackMBID': instance.strTrackMBID,
      'strArtist': instance.strArtist,
      'strAlbum': instance.strAlbum,
      'strTrack': instance.strTrack,
      'strArtistThumb': instance.strArtistThumb,
      'strAlbumThumb': instance.strAlbumThumb,
      'strTrackThumb': instance.strTrackThumb,
      'strCountry': instance.strCountry,
      'strType': instance.strType,
      'intWeek': instance.intWeek,
      'dateAdded': instance.dateAdded,
    };
