import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class File_Picker extends StatelessWidget {
  const File_Picker({super.key});

  @override
  Widget build(BuildContext context) {
    var filename = Selectfile();
    return Column(
      children: [
        InkWell(
          onTap: () async {
            await filename.selectfile();
          },
          child: Text('Select'),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () async {
            await filename.uploadfile();
          },
          child: Text('upload'),
        ),
      ],
    );
  }
}

class Selectfile {
  File? file;
  Future selectfile() async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(allowMultiple: false);
    if (result == null) {
      return;
    }
    final path = result.files.first.path!;
    file = File(path);
    print("dkjasnjkdnjk" + file!.path);
  }

  Future uploadfile() async {
    if (file == null) {
      print('failed');
      return;
    } else {
      final filename = file;
      final destination = 'File/${filename?.path}';
      Reference ref = FirebaseStorage.instance.ref(destination);
      try {
        await ref.putFile(file!);
        print('success');
      } catch (e) {
        print('Error uploading file: $e');
        print('failed');
      }
    }
  }
}
