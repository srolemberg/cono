import "package:flutter/material.dart";

class PublicLoginPage extends StatefulWidget {
  const PublicLoginPage({Key? key}) : super(key: key);

  @override
  State<PublicLoginPage> createState() => _PublicLoginPageState();
}

class _PublicLoginPageState extends State<PublicLoginPage> {
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
                          hintText: "email",
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(16),
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "password",
                        ),
                      ),
                    ),
                    Expanded(
                      // A flexible child that will grow to fit the viewport but
                      // still be at least as big as necessary to fit its contents.
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(16),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text("enter"),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(16),
                            child: OutlinedButton(
                              onPressed: () {},
                              child: const Text("create new"),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(16),
                            child: TextButton(
                              onPressed: () {},
                              child: const Text("recover password"),
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
