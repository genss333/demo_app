import 'package:demo_app/api/connection/api_user.dart';
import 'package:demo_app/model/user_model.dart';
import 'package:flutter/material.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  late Future<List<UserModel>> getUsers;

  Future<List<UserModel>> _getUsers() async {
    return await ApiUser.getUsers();
  }

  Future<void> _refresh() async {
    setState(() {
      getUsers = _getUsers();
    });
  }

  @override
  void initState() {
    getUsers = _getUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User List"),
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: _refresh,
          child: FutureBuilder<List<UserModel>>(
            future: getUsers,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    UserModel user = snapshot.data![index];
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text(user.name!.substring(0, 1)),
                      ),
                      title: Text('${user.name} (${user.id}))'),
                      subtitle:
                          Text('${user.email} ${user.tel} ${user.address}'),
                    );
                  },
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ),
    );
  }
}
