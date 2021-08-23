import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui/models/models.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({Key key, this.currentUser}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0),

      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.grey[200],
                radius: 20.0,
                backgroundImage:
                    CachedNetworkImageProvider(currentUser.imageUrl),
              ),
              const SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: "What's on your mind today"),
                ),
              ),
            ],
          ),
          const Divider(
            height: 10.0,
            thickness: 0.5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlatButton.icon(
                onPressed: () {},
                icon: Icon(Icons.videocam),
                label: Text("Live Tv"),
                color: Colors.red,
              ),
              VerticalDivider(width: 8.0,),
              FlatButton.icon(
                onPressed: () {},
                icon: Icon(Icons.photo_library),
                label: Text("Live Tv"),
                color: Colors.green,
              ),
              VerticalDivider(width: 8.0,),
              FlatButton.icon(
                onPressed: () {},
                icon: Icon(Icons.video_call),
                label: Text("Rooms"),
                color: Colors.purple,
              ),
            ],
          )
        ],
      ),
    );
  }
}
