import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/models/HashtagModel.dart';

class DetailCaption extends StatefulWidget {
  DetailCaption({Key key, this.index}) : super(key: key);
  int index;

  @override
  _DetailCaptionState createState() => _DetailCaptionState();
}

class _DetailCaptionState extends State<DetailCaption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('index is ${widget.index}'),
        actions: [
          IconButton(
              icon: Icon(Icons.content_copy),
              onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text('Copied to clipboard'),
                            action: SnackBarAction(
                              label: 'Hide',
                              onPressed: () => Null,
                            )),
                      );
                    }),
        ],
      ),
      body: Container(
        child: Text(catData[widget.index].caption),
        // Round the edges of the container
        alignment: Alignment.topCenter,
        margin: EdgeInsets.all(12.0),
        padding: EdgeInsets.all(10.0),
        color: Colors.grey[200],
      ),
    );
  }
}
