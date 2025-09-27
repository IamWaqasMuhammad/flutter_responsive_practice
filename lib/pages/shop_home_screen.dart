import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ShopHomeScreen extends StatelessWidget {
  const ShopHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shop Home"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// ---------- Categories (Horizontal List) ----------
            const Text(
              "Categories",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    margin: const EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            categories[index]['image']!,
                            height: 60,
                            width: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          categories[index]['title']!,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

            /// ---------- Products (Responsive Grid) ----------
            const Text(
              "Products",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 250, // each card max width
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.65, // balanced card ratio
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        offset: const Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Responsive Image
                      Expanded(
                        child: ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(12),
                          ),
                          child: Image.network(
                            products[index]['image']!,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      /// Product Info
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          products[index]['title']!,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "\$${products[index]['price']}",
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

/// ---------- Dummy Categories ----------
final List<Map<String, String>> categories = [
  {"title": "Shoes", "image": "https://picsum.photos/id/21/200/200"},
  {"title": "Watches", "image": "https://picsum.photos/id/30/200/200"},
  {"title": "Bags", "image": "https://picsum.photos/id/50/200/200"},
  {"title": "Clothes", "image": "https://picsum.photos/id/70/200/200"},
  {"title": "Shoes", "image": "https://picsum.photos/id/21/200/200"},
  {"title": "Watches", "image": "https://picsum.photos/id/30/200/200"},
  {"title": "Bags", "image": "https://picsum.photos/id/50/200/200"},
  {"title": "Clothes", "image": "https://picsum.photos/id/70/200/200"},
  {"title": "Shoes", "image": "https://picsum.photos/id/21/200/200"},
  {"title": "Watches", "image": "https://picsum.photos/id/30/200/200"},
  {"title": "Bags", "image": "https://picsum.photos/id/50/200/200"},
  {"title": "Clothes", "image": "https://picsum.photos/id/70/200/200"},
  {"title": "Shoes", "image": "https://picsum.photos/id/21/200/200"},
  {"title": "Watches", "image": "https://picsum.photos/id/30/200/200"},
  {"title": "Bags", "image": "https://picsum.photos/id/50/200/200"},
  {"title": "Clothes", "image": "https://picsum.photos/id/70/200/200"},
  {"title": "Shoes", "image": "https://picsum.photos/id/21/200/200"},
  {"title": "Watches", "image": "https://picsum.photos/id/30/200/200"},
  {"title": "Bags", "image": "https://picsum.photos/id/50/200/200"},
  {"title": "Clothes", "image": "https://picsum.photos/id/70/200/200"},
  {"title": "Shoes", "image": "https://picsum.photos/id/21/200/200"},
  {"title": "Watches", "image": "https://picsum.photos/id/30/200/200"},
  {"title": "Bags", "image": "https://picsum.photos/id/50/200/200"},
  {"title": "Clothes", "image": "https://picsum.photos/id/70/200/200"},
];

/// ---------- Dummy Products ----------
final List<Map<String, String>> products = [
  {
    "title": "Running Shoes",
    "price": "59.99",
    "image": "https://picsum.photos/id/1011/600/600",
  },
  {
    "title": "Leather Watch",
    "price": "149.99",
    "image": "https://picsum.photos/id/1012/600/600",
  },
  {
    "title": "Backpack",
    "price": "79.99",
    "image": "https://picsum.photos/id/1013/600/600",
  },
  {
    "title": "Jacket",
    "price": "99.99",
    "image": "https://picsum.photos/id/1014/600/600",
  },
  {
    "title": "Sneakers",
    "price": "89.99",
    "image": "https://picsum.photos/id/1015/600/600",
  },
  {
    "title": "Running Shoes",
    "price": "59.99",
    "image": "https://picsum.photos/id/1011/600/600",
  },
  {
    "title": "Leather Watch",
    "price": "149.99",
    "image": "https://picsum.photos/id/1012/600/600",
  },
  {
    "title": "Backpack",
    "price": "79.99",
    "image": "https://picsum.photos/id/1013/600/600",
  },
  {
    "title": "Jacket",
    "price": "99.99",
    "image": "https://picsum.photos/id/1014/600/600",
  },
  {
    "title": "Sneakers",
    "price": "89.99",
    "image": "https://picsum.photos/id/1015/600/600",
  },
   {
    "title": "Running Shoes",
    "price": "59.99",
    "image": "https://picsum.photos/id/1011/600/600",
  },
  {
    "title": "Leather Watch",
    "price": "149.99",
    "image": "https://picsum.photos/id/1012/600/600",
  },
  {
    "title": "Backpack",
    "price": "79.99",
    "image": "https://picsum.photos/id/1013/600/600",
  },
  {
    "title": "Jacket",
    "price": "99.99",
    "image": "https://picsum.photos/id/1014/600/600",
  },
  {
    "title": "Sneakers",
    "price": "89.99",
    "image": "https://picsum.photos/id/1015/600/600",
  },
  {
    "title": "Running Shoes",
    "price": "59.99",
    "image": "https://picsum.photos/id/1011/600/600",
  },
  {
    "title": "Leather Watch",
    "price": "149.99",
    "image": "https://picsum.photos/id/1012/600/600",
  },
  {
    "title": "Backpack",
    "price": "79.99",
    "image": "https://picsum.photos/id/1013/600/600",
  },
  {
    "title": "Jacket",
    "price": "99.99",
    "image": "https://picsum.photos/id/1014/600/600",
  },
  {
    "title": "Sneakers",
    "price": "89.99",
    "image": "https://picsum.photos/id/1015/600/600",
  },
   {
    "title": "Running Shoes",
    "price": "59.99",
    "image": "https://picsum.photos/id/1011/600/600",
  },
  {
    "title": "Leather Watch",
    "price": "149.99",
    "image": "https://picsum.photos/id/1012/600/600",
  },
  {
    "title": "Backpack",
    "price": "79.99",
    "image": "https://picsum.photos/id/1013/600/600",
  },
  {
    "title": "Jacket",
    "price": "99.99",
    "image": "https://picsum.photos/id/1014/600/600",
  },
  {
    "title": "Sneakers",
    "price": "89.99",
    "image": "https://picsum.photos/id/1015/600/600",
  },
  {
    "title": "Running Shoes",
    "price": "59.99",
    "image": "https://picsum.photos/id/1011/600/600",
  },
  {
    "title": "Leather Watch",
    "price": "149.99",
    "image": "https://picsum.photos/id/1012/600/600",
  },
  {
    "title": "Backpack",
    "price": "79.99",
    "image": "https://picsum.photos/id/1013/600/600",
  },
  {
    "title": "Jacket",
    "price": "99.99",
    "image": "https://picsum.photos/id/1014/600/600",
  },
  {
    "title": "Sneakers",
    "price": "89.99",
    "image": "https://picsum.photos/id/1015/600/600",
  },
];
