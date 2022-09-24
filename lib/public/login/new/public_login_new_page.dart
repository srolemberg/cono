import "package:flutter/material.dart";

class PublicLoginNewPage extends StatefulWidget {
  const PublicLoginNewPage({Key? key}) : super(key: key);

  @override
  State<PublicLoginNewPage> createState() => _PublicLoginNewPageState();
}

class _PublicLoginNewPageState extends State<PublicLoginNewPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Cono"),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) =>
              SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(16),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("email"),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(16),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("email confirmation"),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(16),
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("password"),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(16),
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          label: Text("password confirmation"),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(16),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("token confirmation"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(16),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text("create"),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(16),
                            child: OutlinedButton(
                              onPressed: () {},
                              child: const Text("cancel"),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(16),
                            child: TextButton(
                              onPressed: () {},
                              child: const Text("login"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
