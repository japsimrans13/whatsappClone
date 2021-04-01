import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/models/HashtagModel.dart';
import 'package:flutter_whatsapp_clone/pages/DetailCaption.dart';

class ChartPage extends StatefulWidget {
  ChartPage({Key key}) : super(key: key);

  @override
  _ChartPageState createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: catData.length,
          itemBuilder: (context, index) => Column(
                children: [
                  Divider(
                    height: 20.0,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailCaption(index: index)));
                    },
                    onLongPress: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text('Caption ${index+1} Copied to clipboard'),
                            action: SnackBarAction(
                              label: 'Hide',
                              onPressed: () => Null,
                            )),
                      );
                    },
                    leading: Text(catData[index].subCategory),
                    title: Text(catData[index].fewHashtags),
                  )
                ],
              )),
    );
  }
}