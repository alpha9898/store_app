# Store App

A Flutter application for browsing and managing products with ratings, built as a learning project and demo for Flutter development.

## Features
- Browse a list of products with details
- View product ratings and descriptions
- Modular code structure for easy extension
- Models and services for clean data management

## Project Structure

- **lib/models/**: Contains data models such as `ProductModel` and `Rating`, with serialization/deserialization logic.
- **lib/services/**: Contains services for fetching and managing product data from APIs.
- **lib/main.dart**: Entry point of the app, sets up the main UI and navigation.

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

```dart
import 'package:store_app/models/product_model.dart';

final product = ProductModel.fromJson(jsonData);
print(product.title);
print(product.rating.rate);
```

## Notes
- This project is intended for educational purposes and can be extended with authentication, state management, and more advanced features.
- Contributions and suggestions are welcome!

## License
MIT License
