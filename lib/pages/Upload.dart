import 'package:flutter/material.dart';

class UploadCaption extends StatefulWidget {
  @override
  _UploadCaptionState createState() => _UploadCaptionState();
}

class _UploadCaptionState extends State<UploadCaption> {
  final captionuploadcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          TextField(
            controller: captionuploadcontroller,
            autofocus: true,
            decoration: InputDecoration(
                labelText: 'Caption',
                hintText: 'Paste Caption here.....',
                border: OutlineInputBorder()
                // disabledBorder:
                ),
            // minLines: 10,
            maxLines: 15,
          ),
          OutlinedButton(
              style: TextButton.styleFrom(primary: Colors.green),
              onPressed: () {},
              child: Text('Upload'))
        ],
      ),
    );
  }
}
