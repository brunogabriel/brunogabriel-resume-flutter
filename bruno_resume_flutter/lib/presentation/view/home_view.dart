import 'package:bruno_resume_flutter/presentation/bloc/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Scaffold(
              backgroundColor: Colors.white,
              body: Stack(
                children: [
                  if (state is HomeLoading) ...[
                    const Center(
                      child: CircularProgressIndicator(),
                    )
                  ] else if (state is HomeError) ...[
                    const Center(
                      child: Text(
                          'Something wrong happened...wait some minutes and try again'),
                    )
                  ] else if (state is HomeResult) ...[
                    Text(state.resume.toString())
                  ] else ...[
                    const SizedBox.shrink()
                  ]
                ],
              ));
        },
      );
}
