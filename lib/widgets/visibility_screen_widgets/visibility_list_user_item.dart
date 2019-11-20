import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/user.dart';

class VisibilityListUserItem extends StatelessWidget {
//  final String id;
//  final String name;
//  final String email;
//  final bool visible;
//
//  VisibilityListUserItem({this.id,this.name,this.email,this.visible});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    return ListTile(
      title: Text(user.name),
      subtitle: Text(user.email),
      trailing: Checkbox(
        value: user.visible,
        onChanged: user.toggleFavorite,
        activeColor: Theme.of(context).secondaryHeaderColor,
      ),
    );
  }
}
