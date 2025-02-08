import 'package:belajar_5/bloc/user_bloc.dart';
import 'package:belajar_5/datasource/remote_resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class homepage extends StatelessWidget {
  homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserBloc>(
      create: (context) {
        final userBloc = UserBloc(remoteDataSource: RemoteDataSource());
        userBloc.add(LoadUser());
        return userBloc;
      },
      child: Scaffold(
        body: BlocBuilder<UserBloc, UserState>(builder: (context, state) {
          if (state is UserLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is UserLoaded) {
            final data = state.users;

            return ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(data[index].avatar),
                  ),
                  title: Text('${data[index].firstName}'),
                );
              },
              itemCount: data.length,
            );
          } else if (state is UserError) {
            return Center(
              child: Text(state.error),
            );
          }
          return Container(); // Add this line to handle the default case
        }),
      ),
    );
  }
}
