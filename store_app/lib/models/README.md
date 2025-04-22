# Models Directory

This directory contains the data models used in the Store App Flutter project. Models define the structure of data objects and provide serialization/deserialization logic for working with APIs and local data.

## Files

- **product_model.dart**
  - Defines the `ProductModel` class, which represents a product with fields such as `id`, `title`, `price`, `description`, `category`, `image`, and a nested `Rating` model.
  - Includes a `Rating` class for handling product ratings, with fields for `rate` (double) and `count` (int).
  - Provides `fromJson` and `toJson` methods for easy conversion between Dart objects and JSON.

## Usage

Import the relevant model in your Dart files to work with product data:

```dart
import 'package:store_app/models/product_model.dart';

// Example: Creating a ProductModel from JSON
final product = ProductModel.fromJson(jsonData);
```

## Notes
- Update this directory with additional model files as your app grows.
- Keep model classes focused on data structure and serialization logic.

---
This project is part of a Flutter-based medical and fitness chatbot application using the Llama model.
