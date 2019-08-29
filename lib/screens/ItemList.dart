import 'package:flutter/material.dart';
import 'package:movie_gridview/model/Item.dart';
import 'package:movie_gridview/screens/GetRatings.dart';
import 'package:movie_gridview/screens/GridItemDetails.dart';

class ItemList extends StatelessWidget {
  final Item item;
  const ItemList({@required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GridItemDetails(this.item),
          ),
        );
      },
      child: Card(
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 18.0 / 12.0,
              child: Image.asset(
                item.trailerImg1,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(4.0, 0.0, 4.0, 2.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    item.name,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: 12.0,
                        color: Color(0xFFD73C29),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    item.category,
                    style: TextStyle(color: Colors.black54, fontSize: 9.0),
                  ),
                  SizedBox(height: 0.0),
                  GetRatings(),
                  SizedBox(height: 2.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 4.0),
                        child: Column(
                          children: <Widget>[
                            Text('RELEASE DATE:',
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 9.0,
                                    fontWeight: FontWeight.bold)),
                            Text(item.releaseDate,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 9.0,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 4.0),
                        child: Column(
                          children: <Widget>[
                            Text('RUNTIME:',
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 9.0,
                                    fontWeight: FontWeight.bold)),
                            Text(item.runtime,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 9.0,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
