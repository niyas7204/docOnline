import 'package:doc_online/account_auth/domain/authentication/email_auth.dart';
import 'package:doc_online/account_auth/signin/presentation/login/screens/log_in.dart';
import 'package:flutter/material.dart';


homeDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        const DrawerHeader(
          decoration: BoxDecoration(
              color: Colors.green,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/image/doctor.png'))),
          child: Text(
            'User Name',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.edit),
          title: const Text('edit profile'),
          onTap: () => {Navigator.of(context).pop()},
        ),
        ListTile(
          leading: const Icon(Icons.exit_to_app),
          title: const Text('Logout'),
          onTap: () {
            updateshredPreference('', false, false);
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const Login(),
            ));
          },
        ),
      ],
    ),
  );
}
