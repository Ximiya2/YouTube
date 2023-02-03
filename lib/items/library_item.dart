import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:you_tube/states.dart';

import '../models/library_Model.dart';

Widget LibraryItem({
  required BuildContext context,
  required LibraryModel item,
  required void Function() delete
}){
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
            width: MediaQuery.of(context).size.width * 0.40,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(
                    item.image
                ),
                fit: BoxFit.cover
              )
            ),
          ),
            Positioned(
              bottom: 10,
              right: 10,
              child: Container(
                color: Colors.black,
                child: Text(
                  item.time,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                      color: Colors.white
                  ),
                ),
              ),
            ),
          ]
        ),
        SizedBox(width: 10,),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.name,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black
                ),
              ),
              Text(
                item.text1,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey
                ),
              ),
              Text(
                item.text2,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey
                ),
              ),
            ],
          ),
        ),
        IconButton(
            onPressed: (){
              showModalBottomSheet(
                  context: context,
                  builder: (context) => Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.watch_later_outlined),
                        title: Text(
                          'Save to Watch later'
                        ),
                        onTap: (){},
                      ),
                      ListTile(
                        leading: Icon(Icons.add_box_outlined),
                        title: Text(
                            'Save to playlist'
                        ),
                        onTap: (){},
                      ),
                      ListTile(
                        leading: Icon(Icons.download_outlined),
                        title: Text(
                            'Download video'
                        ),
                        onTap: (){},
                      ),
                      ListTile(
                        leading: Icon(Icons.offline_share_rounded),
                        title: Text(
                            'Share'
                        ),
                        onTap: (){},
                      ),
                      ListTile(
                        onTap: delete,
                        leading: Icon(Icons.remove_circle_outline),
                        title: Text(
                            'Remove from Liked videos'
                        ),
                      ),
                    ],
                  ),
              );
            }, icon: Icon(Icons.more_vert),
        )
      ],
    ),
  );
}