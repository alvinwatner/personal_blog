import 'package:flutter/material.dart';
import 'package:personal_blog/features/ai_project/views/widgets/bullet_item.dart';
import 'package:personal_blog/features/ai_project/views/widgets/bullet_list_with_title.dart';
import 'package:personal_blog/shared/widgets/my_app_bar.dart';

class ListAIProjectPage extends StatelessWidget {
  static const routeName = 'list-ai-project';
  const ListAIProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          width: MediaQuery.of(context).size.width * 0.8,
          child: SingleChildScrollView(
            child: LayoutBuilder(builder: (context, constraints) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Summary",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  const Text(
                      "My latest work in AI was on Question Generation topic. This self-funded research took a year and was conducted in purpose to apply for PhD program through LPDP scholarship in 2021. Due to several reasons, I was unable to finish the paper, even though the experiment's results actually outperformed previous literature. Other than that, I also ever work on Deep Reinforcement Learning topic that was being used for bachelor thesis with title \"LogDQN Deep Reinforcement Learning Implementation for Solving Hydrophobic-Polar Model Protein Folding Problem.\""),
                  const SizedBox(
                    height: 30.0,
                  ),
                  BulltetListWithTitle(
                    title: "Research Articles",
                    listItem: [
                      BulletItem(
                        width: constraints.maxWidth * 0.9,
                        text:
                            "LogDQN Deep Reinforcement Learning Implementation for Solving Hydrophobic-Polar Model Protein Folding Problem.",
                        url: "https://pdfhost.io/v/gQcDK0DN0_logdqn_hp",
                        year: "2020",
                      ),
                      BulletItem(
                        width: constraints.maxWidth * 0.9,
                        text:
                            "The Secret of Overlapping Tokens in Question Generation. (only introduction)",
                        url:
                            "https://pdfhost.io/v/WPZ34m8TF_acl_alpha_tokens_unifinish_work",
                        year: "2021",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  BulltetListWithTitle(
                    title: "Research Projects",
                    listItem: [
                      BulletItem(
                        width: constraints.maxWidth * 0.9,
                        text:
                            "LogDQN Deep Reinforcement Learning Implementation for Solving Hydrophobic-Polar Model Protein Folding Problem.",
                        url: "https://github.com/alvinwatner/LogDQN_ProteinHP",
                        year: "2020",
                      ),
                      BulletItem(
                        width: constraints.maxWidth * 0.9,
                        text:
                            "The Secret of Overlapping Tokens in Question Generation.",
                        url:
                            "https://huggingface.co/alvinwatner/pegasus-large-qg-squad-alpha-interro/tree/main",
                        year: "2021",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  BulltetListWithTitle(
                    title: "Personal Projects",
                    listItem: [
                      BulletItem(
                        width: constraints.maxWidth * 0.9,
                        text:
                            "Protein Folding Hydrophobic-Polar model simulation.",
                        url:
                            "https://github.com/alvinwatner/HP_Protein_Fold-GymEnv",
                        year: "2020",
                      ),
                      BulletItem(
                        width: constraints.maxWidth * 0.9,
                        text:
                            "Banned words decoding mechanism for Huggingface. (project idea because of an issue)",
                        url:
                            "https://github.com/huggingface/transformers/issues/14206#issuecomment-975785716",
                        year: "2020",
                      ),
                      BulletItem(
                        width: constraints.maxWidth * 0.9,
                        text: "Banggood Marketplace Description Parser.",
                        url:
                            "https://github.com/alvinwatner/banggood_description_parser",
                        year: "2021",
                      ),
                      BulletItem(
                        width: constraints.maxWidth * 0.9,
                        text: "Covid-19 in Jakarta Visualization with Tableau.",
                        url:
                            "https://github.com/alvinwatner/banggood_description_parser",
                        year: "2021",
                      ),
                      BulletItem(
                        width: constraints.maxWidth * 0.9,
                        text:
                            "Covid-19 in Indonesia Time Series Visualization with Tableau.",
                        url:
                            "https://public.tableau.com/app/profile/alvin.setiadi8627/viz/covid19_indo/Dashboard1?publish=yes",
                        year: "2021",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  BulltetListWithTitle(
                    title: "Volunteer Projects",
                    listItem: [
                      BulletItem(
                        width: constraints.maxWidth * 0.9,
                        text:
                            "Reading Group Presenter Mathematics for Machine Learning book topic : Basis and Rank, Linear Mapping.",
                        url:
                            "https://www.youtube.com/watch?v=HzNJIPNkLgQ&t=300s",
                        year: "2021",
                      ),
                      BulletItem(
                        width: constraints.maxWidth * 0.9,
                        text:
                            "Podcaster for Machine Learning @ Mikroskil channel (Indonesia Language).",
                        url:
                            "https://open.spotify.com/show/1ukitiIucfT1bvB95s2k9A",
                        year: "2021",
                      ),
                      BulletItem(
                        width: constraints.maxWidth * 0.9,
                        text: "PreTrain GPT2 from Scratch in Indonesia.",
                        url:
                            "https://huggingface.co/flax-community/gpt2-medium-indonesian",
                        year: "2021",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  BulltetListWithTitle(
                    title: "Certificates",
                    listItem: [
                      BulletItem(
                        width: constraints.maxWidth * 0.9,
                        text:
                            "DTsense - Tableau Mastery for Data Visualization.",
                        url:
                            "https://pdfhost.io/v/0JDDKZu30_Alvin_Setiadi_Tendean",
                        year: "2021",
                      ),
                      BulletItem(
                        width: constraints.maxWidth * 0.9,
                        text:
                            "Trending Analytics - Present Data with Confidence.",
                        url:
                            "https://pdfhost.io/v/o0PISSii9_PDwC_Certification_of_Completion",
                        year: "2021",
                      ),
                      BulletItem(
                        width: constraints.maxWidth * 0.9,
                        text: "IDAO 2021 - Machine Learning Bootcamp",
                        url:
                            "https://pdfhost.io/v/nMmbkoUff_idao_ml_bootcamp",
                        year: "2021",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
