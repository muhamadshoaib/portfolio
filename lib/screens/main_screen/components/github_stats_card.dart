import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:portfolio/util_components/background_card.dart';

class GithubStatsCard extends StatefulWidget {
  const GithubStatsCard({super.key});

  @override
  State<GithubStatsCard> createState() => _GithubStatsCardState();
}

class _GithubStatsCardState extends State<GithubStatsCard> {
  DateFormat dateFormatYMdT = DateFormat('yyyy-MM-dd');

  String formatDate(String date) {
    return DateFormat('MMM dd, yyyy').format(dateFormatYMdT.parse(date));
  }

  Future<Response?> getGitStats() async {
    var url = Uri.https('github-readme-streak-stats.herokuapp.com', '', {
      "user": "muhamadshoaib",
      "mode": "weekly",
      "type": "json",
      "exclude_days": "Sun,Sat",
    });
    try {
      return await http.get(url, headers: {
        "content-type": 'application/json',
        "Access-Control-Allow-Origin": "*", // Required for CORS support to work
        "X-Requested-With": "XMLHttpRequest",
        "Access-Control-Allow-Credentials":
            "true", // Required for cookies, authorization headers with HTTPS
        "Access-Control-Allow-Headers":
            "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale, Access-Control-Allow-Origin",
        "Access-Control-Allow-Methods": "GET"
      }).timeout(const Duration(seconds: 60), onTimeout: () {
        throw "Unable to fetch Response";
      }).then((response) async {
        return response;
      }).catchError((onError) {
        throw ('Error while executing requests $onError');
      });
    } on HttpException {
      throw "Unable to fetch Response";
    } catch (e) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getGitStats(),
      builder: ((context, AsyncSnapshot<Response?> snapshot) {
        if (snapshot.hasData && snapshot.data is Response) {
          Response response = snapshot.data!;
          if (response.statusCode == 200) {
            final responseBody = json.decode(response.body);
            return BackgroundCard(
              heading: "Github Stats",
              mainChild: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 100.0,
                          child: Stack(
                            children: <Widget>[
                              Center(
                                child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 6,
                                    value: 1.0,
                                    color: Theme.of(context).primaryColorDark,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  "${responseBody['currentStreak']['length']}",
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      "Current Streak",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context).primaryColorDark,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      "${formatDate(responseBody['currentStreak']['start'])} - ${formatDate(responseBody['currentStreak']['end'])}",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 12.0,
                          ),
                    ),
                  ),
                  Wrap(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Text(
                              "${responseBody['totalContributions']}",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: Text(
                              "Total Contributions",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: Theme.of(context).primaryColorDark,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: Text(
                              " ${formatDate(responseBody['firstContribution'])} - Present",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontSize: 12.0,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      const VerticalDivider(
                        color: Colors.grey,
                        thickness: 0.3,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Text(
                              "${responseBody['longestStreak']['length']}",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: Text(
                              "Longest Streak",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: Theme.of(context).primaryColorDark,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: Text(
                              "${formatDate(responseBody['longestStreak']['start'])} - ${formatDate(responseBody['longestStreak']['end'])}",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontSize: 12.0,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          }
        }
        return const SizedBox.shrink();
      }),
    );
  }
}
