import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PostListScreen extends StatelessWidget {

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("PostList"),
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                context.go('/new_post');
              },
            ),
            IconButton(
              icon: const Icon(Icons.color_lens),
              onPressed: () {
                context.go('/settings');
              },
            ),
          ],
        ),

        body: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const SizedBox(height: 16),
                Expanded(
                  child: SingleChildScrollView(
                    child: SizedBox(
                      width: double.infinity,
                    ),
                  ),
                ),
              ],
            )));


  }
}