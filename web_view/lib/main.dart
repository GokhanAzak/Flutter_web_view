import 'package:flutter/material.dart';
import 'webview_page.dart'; // WebViewPage dosyamızı içe aktarıyoruz

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter WebView',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ana Sayfa')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // WebView sayfasına yönlendirme yapılıyor
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    const WebViewPage(url: 'https://swopss.com/'),
              ),
            );
          },
          child: const Text('WebView\'i Aç'),
        ),
      ),
    );
  }
}
