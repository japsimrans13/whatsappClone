import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UploadHashtag extends StatefulWidget {
  UploadHashtag({Key key}) : super(key: key);

  @override
  _UploadHashtagState createState() => _UploadHashtagState();
}

class _UploadHashtagState extends State<UploadHashtag> {

  final hashtagUpload = TextEditingController();
  var hashtagUploadUrl = 'https://instagramjap.herokuapp.com/api/hashtag/add/';



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          // disable the button if text area is empty.
          OutlinedButton(
              style: TextButton.styleFrom(primary: Colors.green),
              onPressed: () async {
                print('The data is ${hashtagUpload.text}');
                var response = await http.post(hashtagUploadUrl, body: {"hashtag": hashtagUpload.text});
                // var response = await http.get(captionUploadUrl);
                print('Response is ${response.statusCode}');
              },
              child: Text('Upload')),
          TextField(
            controller: hashtagUpload,
            autofocus: true,
            decoration: InputDecoration(
                labelText: 'Hashtag',
                hintText: 'Paste Hashtags here.....',
                border: OutlineInputBorder()
                // disabledBorder:
                ),
            // minLines: 5,
            maxLines: 15,
          ),
        ],
      ),
    );
  }
}