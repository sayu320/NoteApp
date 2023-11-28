import 'package:flutter/material.dart';
import 'package:sample_project_3/view/screen_add_notes.dart';

class ScreenAllNotes extends StatelessWidget {
  const ScreenAllNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Notes'),
      ),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          padding: EdgeInsets.all(20),
          children: List.generate(
            10, (index) => NoteItem(id: index.toString(), 
            title: 'Travel $index', 
            content: 'Today we have are travelling to kolkatta, to explore the bengali culture'
            )
            ),
          )
          ),
          floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton.extended(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder:(context) => ScreenAddNotes(type: ActionType.addNote)  
                )
                );            
              },
            label: const Text('New'),
            icon: const Icon(Icons.add),
            ),
    );
  }
}

class NoteItem extends StatelessWidget {
final String id;
final String title;
final String content;

  const NoteItem({super.key, 
  required this.id, 
  required this.title, 
  required this.content});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScreenAddNotes(type: ActionType.editNote,id: id,)
        )
        );
      },
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey)
      ),
    padding: EdgeInsets.all(5),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                )
              ),
            ),
            IconButton(onPressed: (){},
             icon: Icon(Icons.delete,
             color: Colors.red,
             )
             )
          ],
        ),
        Text(
          content,
          maxLines: 5,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14
          ),
        )
      ],
    ),

    ),
    );
  }
}
