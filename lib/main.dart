import 'package:flutter/material.dart';
import 'package:hayat_onldocc_rule/strings/rule_string.dart';

void main() async {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      title: '인지케어 약관',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        tabBarTheme: const TabBarTheme(
          dividerHeight: 1,
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(
              width: 0.5,
            ),
          ),
          overlayColor: WidgetStatePropertyAll(Colors.white),
          indicatorColor: Color(0xff404040),
          dividerColor: Color(0xff404040),
          indicatorSize: TabBarIndicatorSize.tab,
          unselectedLabelStyle: TextStyle(
            color: Color(0xff404040),
            fontWeight: FontWeight.w400,
            fontSize: 13,
            height: 18 / 13,
          ),
          labelStyle: TextStyle(
            color: Color(0xff404040),
            fontWeight: FontWeight.w700,
            fontSize: 13,
            height: 18 / 13,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFf62459),
        ),
        useMaterial3: true,
        fontFamily: "Pretendard",
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const TextStyle defaultStyle = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 13,
      height: 18 / 13,
    );
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(10.0),
            child: TabBar(
              tabs: [
                Tab(
                  text: "개인정보 처리방침",
                ),
                Tab(
                  text: "서비스 이용약관",
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      RuleString().personalInfo,
                      style: defaultStyle,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      RuleString().appRule,
                      style: defaultStyle,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
