import 'package:flutter/cupertino.dart';

import '../models/library_Model.dart';

Widget LibraryItem({
  required BuildContext context,
  required LibraryModel item,
  required Function() delete
}){
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(
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
        )
      ],
    ),
  );
}