import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/pages/search/result_page.dart';
import '../../core/sizedbox.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CupertinoSearchTextField(
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  style: TextStyle(color: Colors.white),
                  suffixIcon: Icon(
                    CupertinoIcons.xmark_circle_fill,
                    color: Colors.grey,
                  ),
                  prefixIcon: Icon(
                    CupertinoIcons.search,
                    color: Colors.grey,
                  ),
                ),
                ksizedbox2,
                // Expanded(child: const Searchidle()),

                Expanded(child: const Result()),
              ],
            ),
          )),
    );
  }
}