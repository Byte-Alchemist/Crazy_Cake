import 'package:crazy_cake/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:crazy_cake/models/house_model.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<HouseRoom> houselist = houseList;

  List<HouseRoom> searchResult = [];

  @override
  void initState() {
    super.initState();
    searchResult = houselist; // Initialize with all users
  }

  void searchUser(String query) {
    // Clear the previous search results
    if (query.isEmpty) {
      setState(() {
        searchResult =
            List.from(houselist); // Reset to all users if query is empty
      });
      return;
    }

    // Filter the users based on the query
    List<HouseRoom> searchResultData = houselist.where((element) {
      return element.name
          .toString()
          .toLowerCase()
          .contains(query.toLowerCase());
    }).toList();

    setState(() {
      searchResult = searchResultData; // Update the search results
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Search'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                searchUser(value); // Call searchUser on text change
              },
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.all(8),
              itemCount: searchResult.length,
              itemBuilder: (context, index) {
                return Card(
                  color: AppColor.blue,
                  key: Key(searchResult[index].name
                      .toString()), // Use searchResult here
                  elevation: 5,
                  child: ListTile(
                    leading: CircleAvatar(child: Text(index.toString())), // Use searchResult here
                    title: Text(
                        searchResult[index].name), // Use searchResult here
                    subtitle: Text(searchResult[index].place
                        .toString()), // Use searchResult here
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
