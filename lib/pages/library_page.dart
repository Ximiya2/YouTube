import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../items/library_item.dart';
import '../states.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: IconButton(
            onPressed: (){},
            icon: Icon(Icons.arrow_back)
        ),
        actions: [
          IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.airplay)
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search)
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.more_vert)
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: libraryList.length,
          itemBuilder: (context, index){
          return LibraryItem(
            context: context,
            delete: () {
              libraryList.removeAt(index);
              Navigator.pop(context);
              setState(() {});
            },
            item: libraryList[index]!
          );
          }),
    );
  }
}
