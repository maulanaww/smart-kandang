import 'package:flutter/material.dart';
import 'package:smart_kandang/screen/article/component/article_screen.dart';
import 'package:smart_kandang/screen/article/component/image_container.dart';
import 'package:smart_kandang/screen/article/component/models/article_modul.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  static const routeName = '/discover';
  @override
  Widget build(BuildContext context) {
    List<String> tabs = [
      'Breaking News',
      'About',
      'Fitur',
      'Food',
      'Tips',
      'Technology',
    ];

    return DefaultTabController(
      initialIndex: 0,
      length: tabs.length,
      child: Scaffold(
        backgroundColor: Color(0XFFE5E5E5),
        extendBodyBehindAppBar: true,
        body: ListView(
            padding: const EdgeInsets.all(20.0),
            children: [_CategoryNews(tabs: tabs)]),
      ),
    );
  }
}

class _CategoryNews extends StatelessWidget {
  const _CategoryNews({
    Key? key,
    required this.tabs,
  }) : super(key: key);

  final List<String> tabs;

  @override
  Widget build(BuildContext context) {
    final articles = Article.articles;
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        TabBar(
          isScrollable: true,
          indicatorColor: Colors.black,
          tabs: tabs
              .map(
                (tab) => Tab(
                  icon: Text(
                    tab,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              )
              .toList(),
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: TabBarView(
                children: tabs
                    .map(
                      (tab) => ListView.builder(
                        shrinkWrap: true,
                        itemCount: articles.length,
                        itemBuilder: ((context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                ArticleScreen.routeName,
                                arguments: articles[index],
                              );
                            },
                            child: Row(
                              children: [
                                ImageContainer(
                                    width: 80,
                                    height: 80,
                                    margin: const EdgeInsets.all(10.0),
                                    borderRadius: 5,
                                    images: articles[index].imageUrl),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        articles[index].title,
                                        maxLines: 2,
                                        overflow: TextOverflow.clip,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.schedule,
                                            size: 18,
                                          ),
                                          const SizedBox(width: 5),
                                          Text(
                                            '${DateTime.now().difference(articles[index].createdAt).inHours} hourse ago',
                                            style:
                                                const TextStyle(fontSize: 12),
                                          ),
                                          const SizedBox(width: 20),
                                          const Icon(
                                            Icons.visibility,
                                            size: 18,
                                          ),
                                          Text(
                                            '${articles[index].views} views',
                                            style:
                                                const TextStyle(fontSize: 12),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      ),
                    )
                    .toList()))
      ],
    );
  }
}
