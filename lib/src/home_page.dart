import 'package:flutter/material.dart';
import 'package:indicator_sample_app/src/components/indicator_widget.dart';
import 'package:indicator_sample_app/src/model/indicator_option.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            children: [
              Image.network(
                'https://plus.unsplash.com/premium_photo-1694626326748-ad4bbddceb42?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80',
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://images.unsplash.com/photo-1694714565699-0183e7de39d9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1972&q=80',
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://images.unsplash.com/photo-1693103846224-ff23e91ef751?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80',
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://images.unsplash.com/photo-1694732519038-dcc9379eb148?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
                fit: BoxFit.cover,
              ),
            ],
            onPageChanged: (value) {},
          ),
          IndicatorWidget(
            indicatorOption: IndicatorOption(
              counts: 4,
              gap: 20,
              size: const Size(20, 20),
            ),
            controller: controller,
          ),
        ],
      ),
    );
  }
}
