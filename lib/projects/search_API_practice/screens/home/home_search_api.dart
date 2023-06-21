import 'package:flutter/material.dart';
import 'package:flutter_practice_all/projects/search_API_practice/data/api/api_services.dart';
import 'package:flutter_practice_all/projects/search_API_practice/models/user_modal.dart';
import 'package:flutter_practice_all/projects/search_API_practice/screens/search/search.dart';

class HomeSearchApi extends StatefulWidget {
  const HomeSearchApi({super.key});

  @override
  State<HomeSearchApi> createState() => _HomeSearchApiState();
}

class _HomeSearchApiState extends State<HomeSearchApi> {
  FetchUser _userList = FetchUser();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: SearchUser());
            },
            icon: const Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: FutureBuilder<List<User>>(
          future: _userList.getUserList(),
          builder: (context, snapshot) {
            var data = snapshot.data;
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
              itemCount: data?.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              '${data?[index].id}',
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${data?[index].name}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('${data?[index].email}'),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
