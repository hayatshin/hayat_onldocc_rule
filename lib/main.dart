import 'package:flutter/material.dart';
import 'package:hayat_onldocc_rule/strings/rule_string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // String env = "";

  @override
  void initState() {
    super.initState();
    // _initializeEnv();
  }

  void _initializeEnv() async {
    // await dotenv.load(fileName: "env");
    // setState(() {
    //   env = dotenv.env["CHECK"]!;
    // });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '인지케어 약관',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFF2D78)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(
              text: "하야트 이용약관",
            ),
            Tab(
              text: "개인정보 처리방침",
            ),
          ]),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              SingleChildScrollView(child: Text(RuleString().appRule)),
              SingleChildScrollView(child: Text(RuleString().personalInfo)),
            ],
          ),
        ),
      ),
    );
  }
}
