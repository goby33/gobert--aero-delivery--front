import 'package:aero_delivery/presentation/ui/settings/settings_listeners.dart';
import 'package:aero_delivery/presentation/ui/settings/settings_provider.dart';
import 'package:aero_delivery/presentation/ui/settings/widgets/delete_account_pop_up.dart';
import 'package:aero_delivery/presentation/ui/settings/widgets/email_pop_up.dart';
import 'package:aero_delivery/presentation/ui/settings/widgets/name_pop_up.dart';
import 'package:aero_delivery/presentation/ui/settings/widgets/password_pop_up.dart';
import 'package:aero_delivery/presentation/ui/settings/widgets/sign_out_pop_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 50),
        children: [
          ListTile(
            title:
                Text('Settings', style: Theme.of(context).textTheme.headline5),
          ),
          // update name
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Personal Information',
                    style: Theme.of(context).textTheme.headline6),
                ListTile(
                  onTap: () =>
                      _showModal(buildContext: context, child: NamePopUp()),
                  title: const Text('Name'),
                  subtitle: const Text('Your name'),
                  trailing: const Icon(Icons.edit),
                ),
                ListTile(
                  onTap: () =>
                      _showModal(buildContext: context, child: EmailPopUp()),
                  title: Text('Email'),
                  subtitle: Text('Your email'),
                  trailing: Icon(Icons.edit),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          // update password
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Password', style: Theme.of(context).textTheme.headline6),
                ListTile(
                  onTap: () =>
                      _showModal(buildContext: context, child: PasswordPopUp()),
                  title: const Text('Password'),
                  subtitle: const Text('********'),
                  trailing: const Icon(Icons.edit),
                ),
              ],
            ),
          ),
          // settings dark mode
          SizedBox(height: 30),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('App', style: Theme.of(context).textTheme.headline6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Dark Mode'),
                  ],
                ),
              ],
            ),
          ),
          //delete account
          const SizedBox(height: 30),

          // button delete account
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Sign out', style: Theme.of(context).textTheme.headline6),
                ListTile(
                  onTap: () =>
                      _showModal(buildContext: context, child: SignOutPopUp()),
                  title: const Text('Sign Out'),
                  subtitle: const Text('Sign out of your account'),
                  trailing: const Icon(Icons.delete),
                ),
                Text('Delete Account',
                    style: Theme.of(context).textTheme.headline6),
                ListTile(
                  onTap: () => _showModal(
                      buildContext: context, child: DeleteAccountPopUp()),
                  title: const Text('Delete Account'),
                  subtitle: const Text('Delete your account'),
                  trailing: const Icon(Icons.delete),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showModal({
    required BuildContext buildContext,
    required Widget child,
  }) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: buildContext,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      builder: (_) {
        return SettingsProvider(
          child: SettingsListeners(
            child: child,
          ),
        );
      },
    ).whenComplete(() => null);
  }
}
