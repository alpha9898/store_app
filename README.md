# Store App

A Flutter application for browsing and managing products with ratings, built as a learning project and demo for Flutter development.

## Features
- Browse a list of products with details.
- View product ratings and descriptions.
- Fetch products from a remote API (e.g., all products, products by category).
- Fetch available product categories.
- Modular code structure for easy extension.
- Models and services for clean data management.
- Helper utilities for common tasks like making HTTP requests.

## Project Structure

- **lib/main.dart**: Entry point of the app, sets up the main UI and navigation.
- **lib/screens/**: Contains the different screens or pages of the application UI.
- **lib/models/**: Contains data models (e.g., `ProductModel`, `Rating`) with serialization/deserialization logic.
- **lib/services/**: Contains services for fetching and managing data from APIs (e.g., fetching products, categories).
- **lib/helper/**: Contains utility classes and functions, such as `Api` for simplifying HTTP requests (GET, POST, PUT).

## Getting Started

1. **Clone the repository**
   ```bash
   git clone <your-repo-url>
   cd store_app
   ```
2. **Install dependencies**
   ```bash
   flutter pub get
   ```
3. **Run the app**
   ```bash
   flutter run
   ```

## Example Usage

### Fetching Products

```dart
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/get_all_product_service.dart'; // Example service import

// Assuming a service class exists to fetch all products
final allProductService = AllProductService(); // Replace with actual service if different

void fetchProducts() async {
  try {
    List<ProductModel> products = await allProductService.getAllProducts();
    if (products.isNotEmpty) {
      print(products.first.title);
    }
  } catch (e) {
    print("Error fetching products: $e");
  }
}
```

### Using the API Helper

```dart
import 'package:store_app/helper/api.dart'; // Import the API helper

final api = Api();

// Example GET request
Future<void> fetchData() async {
  try {
    final data = await api.get(url: 'https://fakestoreapi.com/products');
    print("Fetched data: $data");
  } catch (e) {
    print("Error fetching data: $e");
  }
}

// Example POST request
Future<void> createProduct() async {
  try {
    final response = await api.post(
      url: 'https://fakestoreapi.com/products',
      body: {
        'title': 'test product',
        'price': 13.5, // Use numbers for numeric types
        'description': 'lorem ipsum set',
        'image': 'https://i.pravatar.cc',
        'category': 'electronic',
      },
      // token: 'your_bearer_token', // Optional token
    );
    print("POST response: $response");
  } catch (e) {
    print("Error creating product: $e");
  }
}
```

## Notes
- This project is intended for educational purposes and can be extended with authentication, state management, and more advanced features.
- The API helper's `put` method currently uses POST; this might need adjustment depending on API requirements.
- Contributions and suggestions are welcome!

## License
MIT License


# API Helper

The `Api` class in `lib/helper/api.dart` provides methods to make HTTP requests to your backend or third-party APIs.

## Usage

```dart
import 'package:store_app/helper/api.dart';

final api = Api();

// GET request
final data = await api.get(url: 'https://fakestoreapi.com/products');

// POST request with optional token
final response = await api.post(
  url: 'https://fakestoreapi.com/products',
  body: {
    'title': 'test product',
    'price': '13.5',
    'description': 'lorem ipsum set',
    'image': 'https://i.pravatar.cc',
    'category': 'electronic',
  },
  token: 'your_bearer_token', // or null if not needed
);

// PUT request (note: currently uses POST under the hood)
final putResponse = await api.put(
  url: 'https://fakestoreapi.com/products/1',
  body: {
    'title': 'updated product',
    // other fields...
  },
  token: 'your_bearer_token',
);
```
