import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NewsCard extends StatelessWidget {
  NewsCard(this.judultumbuhan, this.isitumbuhan, this.assetImageTumbuhan);
  var judultumbuhan;
  var isitumbuhan;
  AssetImage assetImageTumbuhan;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0.5,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: assetImageTumbuhan,
            maxRadius: 25,
          ),
          title: Text(
            judultumbuhan,
            style:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 12,color: Colors.black87),
          ),
          subtitle: Text(isitumbuhan,
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 11),
              maxLines: 2,
              overflow: TextOverflow.ellipsis),
          trailing: Icon(Icons.more_vert),
          isThreeLine: true,
        ));
  }
}