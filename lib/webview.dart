import 'package:flutter/material.dart';
import 'main.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  InAppWebViewController? inAppWebViewController;
  double _progress = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "IrisInsight",
          style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFFFFFFF)),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20), // Adjust the value according to your preference
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LinearProgressIndicator(value: _progress),
            Container(
              width: double.maxFinite,
              height: 720,
              child: InAppWebView(
                initialUrlRequest: URLRequest(
                  url: Uri.parse("https://eyejack.in/collections"),
                ),
                onWebViewCreated: (InAppWebViewController controller) {
                  inAppWebViewController = controller;
                },
                onProgressChanged: (InAppWebViewController controller, int progress) {
                  setState(() {
                    _progress = progress / 100;
                  });
                },
              ),
            ),
            const SizedBox(height: 16),

          ],
        ),
      ),
    );
  }
}

class Eyehospital extends StatefulWidget {
  @override
  _EyehospitalState createState() => _EyehospitalState();
}

class _EyehospitalState extends State<Eyehospital> {
  InAppWebViewController? inAppWebViewController;
  double _progress = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "IrisInsight",
          style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFFFFFFF)),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20), // Adjust the value according to your preference
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LinearProgressIndicator(value: _progress),
            Container(
              width: double.maxFinite,
              height: 720,
              child: InAppWebView(
                initialUrlRequest: URLRequest(
                  url: Uri.parse("https://www.dragarwal.com/eye-hospitals/"),
                ),
                onWebViewCreated: (InAppWebViewController controller) {
                  inAppWebViewController = controller;
                },
                onProgressChanged: (InAppWebViewController controller, int progress) {
                  setState(() {
                    _progress = progress / 100;
                  });
                },
              ),
            ),
            const SizedBox(height: 16),

          ],
        ),
      ),
    );
  }
}

class Eyehospital1 extends StatefulWidget {
  @override
  _Eyehospital1State createState() => _Eyehospital1State();
}

class _Eyehospital1State extends State<Eyehospital1> {
  InAppWebViewController? inAppWebViewController;
  double _progress = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "IrisInsight",
          style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFFFFFFF)),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20), // Adjust the value according to your preference
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LinearProgressIndicator(value: _progress),
            Container(
              width: double.maxFinite,
              height: 720,
              child: InAppWebView(
                initialUrlRequest: URLRequest(
                  url: Uri.parse("https://www.allaboutvision.com/locator/en-in/#/result?address=Ahmedabad%2C%20Gujarat%2C%20India&currentPage=1&lang=en-in&lat=23.022505&long=72.5713621&miles=100&unitOfMeasurement=KM"),
                ),
                onWebViewCreated: (InAppWebViewController controller) {
                  inAppWebViewController = controller;
                },
                onProgressChanged: (InAppWebViewController controller, int progress) {
                  setState(() {
                    _progress = progress / 100;
                  });
                },
              ),
            ),
            const SizedBox(height: 16),

          ],
        ),
      ),
    );
  }
}

void _showBuyNowForm(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Buy Now Form',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            // Add form fields for the user to fill in
            TextFormField(
              decoration: const InputDecoration(labelText: 'Full Name'),
            ),
            const SizedBox(height: 8),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Address'),
            ),
            const SizedBox(height: 8),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Payment Method'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle form submission
                Navigator.pop(context); // Close the modal
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      );
    },
  );
}

