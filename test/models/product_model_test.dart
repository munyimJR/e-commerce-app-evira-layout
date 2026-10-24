import 'package:flutter_test/flutter_test.dart';
import 'package:e_commerce_app_v1/core/models/product_model.dart';
import 'package:e_commerce_app_v1/core/models/products_response_model.dart';

void main() {
  group('ProductModel deserialization tests', () {
    const sampleProductJson = {
      "id": 1,
      "title": "Essence Mascara Lash Princess",
      "description": "Popular mascara for volumizing effects.",
      "category": "beauty",
      "price": 9.99,
      "discountPercentage": 10.48,
      "rating": 2.56,
      "stock": 99,
      "tags": ["beauty", "mascara"],
      "brand": "Essence",
      "sku": "BEA-ESS-ESS-001",
      "weight": 4,
      "dimensions": {
        "width": 15.14,
        "height": 13.08,
        "depth": 22.99
      },
      "warrantyInformation": "1 week warranty",
      "shippingInformation": "Ships in 3-5 business days",
      "availabilityStatus": "In Stock",
      "reviews": [
        {
          "rating": 3,
          "comment": "Would not recommend!",
          "date": "2025-04-30T09:41:02.053Z",
          "reviewerName": "Eleanor Collins",
          "reviewerEmail": "eleanor.collins@x.dummyjson.com"
        }
      ],
      "returnPolicy": "No return policy",
      "minimumOrderQuantity": 48,
      "images": ["https://cdn.dummyjson.com/product-images/beauty/1.webp"],
      "thumbnail": "https://cdn.dummyjson.com/product-images/beauty/thumbnail.webp"
    };

    test('Parses ProductModel correctly from JSON', () {
      final product = ProductModel.fromJson(sampleProductJson);

      expect(product.id, 1);
      expect(product.title, "Essence Mascara Lash Princess");
      expect(product.category, "beauty");
      expect(product.price, 9.99);
      expect(product.discountPercentage, 10.48);
      expect(product.rating, 2.56);
      expect(product.stock, 99);
      expect(product.brand, "Essence");
      expect(product.dimensions?.width, 15.14);
      expect(product.reviews.length, 1);
      expect(product.reviews.first.reviewerName, "Eleanor Collins");
      expect(product.reviews.first.rating, 3);
      expect(product.thumbnail, "https://cdn.dummyjson.com/product-images/beauty/thumbnail.webp");
    });

    test('Calculates original price before discount accurately', () {
      final product = ProductModel.fromJson(sampleProductJson);
      // original = 9.99 / (1 - 0.1048) = ~11.159
      expect(product.originalPrice, greaterThan(product.price));
      expect(product.originalPrice.toStringAsFixed(2), "11.16");
    });

    test('Parses ProductsResponseModel correctly', () {
      final responseJson = {
        "products": [sampleProductJson],
        "total": 194,
        "skip": 0,
        "limit": 1
      };

      final response = ProductsResponseModel.fromJson(responseJson);
      expect(response.total, 194);
      expect(response.products.length, 1);
      expect(response.products.first.id, 1);
    });
  });
}
