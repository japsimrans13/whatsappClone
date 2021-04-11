import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UploadCaption extends StatefulWidget {
  @override
  _UploadCaptionState createState() => _UploadCaptionState();
}

class _UploadCaptionState extends State<UploadCaption> {
  final captionuploadcontroller = TextEditingController();

  var captionUploadUrl = 'https://instagramjap.herokuapp.com/api/caption/add/';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          OutlinedButton(
              style: TextButton.styleFrom(primary: Colors.green),
              onPressed: () async {
                print('The data is ${captionuploadcontroller.text}');
                var response = await http.post(captionUploadUrl,body: {"caption": captionuploadcontroller.text});
                // var response = await http.get(captionUploadUrl);
                print('Response is ${response.statusCode}');
              },
              child: Text('Upload')),
          TextField(
            controller: captionuploadcontroller,
            autofocus: true,
            decoration: InputDecoration(
                labelText: 'Caption',
                hintText: 'Paste Caption here.....',
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
