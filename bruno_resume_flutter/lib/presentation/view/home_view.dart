import 'package:bruno_resume_flutter/core/constants.dart';
import 'package:bruno_resume_flutter/presentation/bloc/bloc/home_bloc.dart';
import 'package:bruno_resume_flutter/presentation/widgets/about_widget.dart';
import 'package:bruno_resume_flutter/presentation/widgets/educations_widget.dart';
import 'package:bruno_resume_flutter/presentation/widgets/experiences_widget.dart';
import 'package:bruno_resume_flutter/presentation/widgets/publications_widget.dart';
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
                    SingleChildScrollView(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: kDefaultSpace),
                        child: Column(
                          children: [
                            AboutWidget(state.resume.about),
                            EducationsWidget(state.resume.educations),
                            ExperiencesWidget(state.resume.experiences),
                            PublicationsWidget(state.resume.publications)
                          ],
                        ),
                      ),
                    )
                  ] else ...[
                    const SizedBox.shrink()
                  ]
                ],
              ));
        },
      );
}
