import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shadow_run_mobile/widgets/visibility_screen_widgets/visibility_list_user_item.dart';

import '../providers/users.dart';
import '../providers/user.dart';

class VisibilityList extends StatefulWidget {
  static const String routeName = '/visibility-list';

  @override
  _VisibilityListState createState() => _VisibilityListState();
}

class _VisibilityListState extends State<VisibilityList> {
  String searchInput='';

  @override
  Widget build(BuildContext context) {
    final usersData = Provider.of<Users>(context);
    final users = usersData.users;
    var usersFiltered = users.where((user)=>user.name.toLowerCase().contains(searchInput.toLowerCase())).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Кто меня видит'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Начните вводить имя'),
            onChanged: (value) {
              print(value);
              setState(() {
                searchInput = value;
              });
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: usersFiltered.length,
              itemBuilder: (ctx, i) => ChangeNotifierProvider(
                builder: (c) => usersFiltered[i],
                child: VisibilityListUserItem(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
