/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
 */

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';
import 'package:flutter_ui_challenges/super_widgets/super_widgets.dart';

class ProfileTwoPage extends StatelessWidget {
  static const String path = 'lib/src/pages/profile/profile2.dart';
  final List<Map> _collections = [
    {'title': 'Food joint', 'image': meal},
    {'title': 'Photos', 'image': images[1]},
    {'title': 'Travel', 'image': fishtail},
    {'title': 'Nepal', 'image': kathmandu2},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.indigo.shade300, Colors.indigo.shade500]),
            ),
          ),
          ListView.builder(
            itemCount: 7,
            itemBuilder: _mainListBuilder,
          ),
        ],
      ),
    );
  }

  Widget _mainListBuilder(BuildContext context, int index) {
    if (index == 0) return _buildHeader(context);
    if (index == 1) return _buildSectionHeader(context);
    if (index == 2) return _buildCollectionsRow();
    if (index == 3) {
      return Container(
          color: Colors.white,
          padding: EdgeInsets.only(left: 20, top: 20, bottom: 10),
          child: Text('Most liked posts',
              style: Theme.of(context).textTheme.title));
    }
    return _buildListItem();
  }

  Widget _buildListItem() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: PNetworkImage(images[2], fit: BoxFit.cover),
      ),
    );
  }

  Container _buildSectionHeader(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Collection',
            style: Theme.of(context).textTheme.title,
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              'Create new',
              style: TextStyle(color: Colors.blue),
            ),
          )
        ],
      ),
    );
  }

  Container _buildCollectionsRow() {
    return Container(
      color: Colors.white,
      height: 200,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: _collections.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              width: 150,
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: PNetworkImage(_collections[index]['image'],
                              fit: BoxFit.cover))),
                  SizedBox(
                    height: 5,
                  ),
                  Text(_collections[index]['title'],
                      style: Theme.of(context)
                          .textTheme
                          .subhead
                          .merge(TextStyle(color: Colors.grey.shade600)))
                ],
              ));
        },
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return SuperStack(
      pMargin: EdgeInsets.only(top: 50),
      pHeight: 240,
      children: <Widget>[
        SuperColumn(
          pPadding: EdgeInsets.only(top: 40, left: 30, right: 30, bottom: 10),
          materialType: MaterialType.canvas,
          materialShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          materialElevation: 5,
          children: <Widget>[
            SizedBox(height: 50),
            Text(
              'Mebina Nepal',
              style: Theme
                  .of(context)
                  .textTheme
                  .title,
            ),
            SizedBox(height: 5),
            Text('UI/UX designer | Foodie | Kathmandu'),
            SizedBox(height: 16),
            SuperRow(
              pHeight: 40,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SuperListTile(
                  pFlex: 1,
                  title: Text(
                    '302',
                    textAlign: TextAlign.center,
                    style: TextStyleBold(),
                  ),
                  subtitle: Text('Posts'.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 11)),
                ),
                SuperListTile(
                  pFlex: 1,
                  title: Text(
                    '10.3K',
                    textAlign: TextAlign.center,
                    style: TextStyleBold(),
                  ),
                  subtitle: Text('Followers'.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 11)),
                ),
                SuperListTile(
                  pFlex: 1,
                  title: Text(
                    '120',
                    textAlign: TextAlign.center,
                    style: TextStyleBold(),
                  ),
                  subtitle: Text('Following'.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 11)),
                ),
              ],
            )
          ],
        ),
        Align(
          alignment: AlignmentDirectional.topCenter,
          child: Material(
            elevation: 15,
            shape: CircleBorder(),
            child: CircleAvatar(
              radius: 40,
              backgroundImage: CachedNetworkImageProvider(avatars[0]),
            ),
          ),
        ),
      ],
    );
  }
}
