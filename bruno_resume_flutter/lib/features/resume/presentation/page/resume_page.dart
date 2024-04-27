import 'package:bruno_resume_flutter/features/resume/presentation/cubit/resume_cubit.dart';
import 'package:bruno_resume_flutter/features/resume/presentation/views/resume.error.widget.dart';
import 'package:bruno_resume_flutter/features/resume/presentation/views/resume.loading.widget.dart';
import 'package:bruno_resume_flutter/features/resume/presentation/views/resume.success.widget.dart';
import 'package:bruno_resume_flutter/shared/extensions/string_extensions.dart';
import 'package:bruno_resume_flutter/shared/theme/theme_constants.dart';
import 'package:bruno_resume_flutter/shared/theme/widgets/fade_in_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.I.get<ResumeCubit>()..loadResume(),
      child: BlocBuilder<ResumeCubit, ResumeState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                (state is ResumeResultState) ? state.result.about.fullname : '',
              ),
              actions: [
                if (state is ResumeResultState) ...{
                  ...state.result.actions.map(
                    (action) => Padding(
                      padding: const EdgeInsets.only(
                        right: kDefaultSpace,
                      ),
                      child: FadeInAction(
                        icon: FaIcon(action.icon.appIconData),
                        onPressed: () {},
                      ),
                    ),
                  )
                },
                Padding(
                  padding: const EdgeInsets.only(
                    right: kDefaultSpace,
                  ),
                  child: FadeInAction(
                    icon: FaIcon(FontAwesomeIcons.moon),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            body: Stack(
              children: [
                if (state is ResumeResultState) ...{
                  const SingleChildScrollView(
                    child: ResumeSuccessWidget(),
                  )
                } else if (state is ResumeErrorState) ...{
                  const ResumeErrorWidget()
                } else ...{
                  const ResumeLoadingWidget()
                }
              ],
            ),
          );
        },
      ),
    );
  }
}
