import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PhotoTile extends StatelessWidget {
  final String thumbnailUrl;
  final String albumTitle;
  final String photoTitle;

  const PhotoTile({
    Key key,
    @required this.thumbnailUrl,
    @required this.albumTitle,
    @required this.photoTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CachedNetworkImage(
          imageUrl: thumbnailUrl,
          errorWidget: (_, __, ___) => Icon(Icons.error),
        ),
        Text(albumTitle, overflow: TextOverflow.ellipsis),
        Text(photoTitle, overflow: TextOverflow.ellipsis),
      ],
    );
  }
}
