import 'package:flutter/material.dart';

enum ActionType{
  addNote,
  editNote
}

class ScreenAddNotes extends StatelessWidget {
final ActionType type;
String? id;

  ScreenAddNotes({
    super.key,  
    required this.type,
    this.id,});

  Widget get SaveButton => TextButton.icon(
    onPressed: (){
      switch(type) {
        case ActionType.addNote:
        // add note
        break;
        case ActionType.editNote:
        // edit note
        break;
      }
    }, 
    icon: const Icon(
      Icons.save,
      color: Colors.white,
    ), 
    label: const Text('Save',
    style: TextStyle(
      color: Colors.white),
    )
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(type.name.toUpperCase()),
        actions: [
      SaveButton,
        ],
      ),
      body: SafeArea(
        child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Title',
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              maxLines: 4,
              maxLength: 100,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Content',
              ),
            )
          ],
        ),
        )
        ),
    );
  }
}