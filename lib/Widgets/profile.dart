import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_ui/config/palette.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final bool isActive;
  final bool hasBoder;

  ProfileAvatar({this.imageUrl, this.isActive=false,this.hasBoder=false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        CircleAvatar(
          radius: 20.0,
          backgroundColor: Palette.facebookBlue,
          child: CircleAvatar(
            radius: hasBoder?17.0:20.0,
            backgroundColor: Colors.grey[200],
            backgroundImage: CachedNetworkImageProvider(imageUrl),
          ),
        ),
        isActive
            ? Positioned(
          bottom: 15.0,
          right: 0.0,
          child: Container(
            height: 15.0,
            width: 15.0,
            decoration: BoxDecoration(
              color: Palette.online,
              border: Border.all(
                width: 2.0,
                color: Colors.white,
              ),
              shape: BoxShape.circle,
            ),
          ),
        )
            : const SizedBox.shrink(),
      ],
    );
  }
}
