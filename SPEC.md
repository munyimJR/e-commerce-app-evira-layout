# Spec: Evira E-Commerce Mobile App (Flutter)

## 1. Objective
Build the **Evira E-Commerce Mobile App** in Flutter, integrating the exported **Figma mobile layout codegen & design system** (`lib/theme/`, `lib/utils/`, and `lib/code_gen_export/`) with live product and catalog data fetched from the [DummyJSON Products API](https://dummyjson.com/docs/products).

### Target User & Core Use Cases
- **Discovery (Home)**: High-impact banner carousels, category pills, special offers, and popular product grids using Evira styling.
- **Search & Catalog**: Keyword search with suggestions, category filtering, and responsive product cards with ratings and price tags.
- **Product Inspection**: Comprehensive product view with image galleries, customer reviews, discount calculation, stock indicators, and "Add to Cart" CTA.
- **Cart & Checkout**: Interactive shopping cart with quantity controls, live subtotal computation, and checkout summary flow.
- **Profile & Settings**: Account settings, wishlist preview, and theme toggle (Light / Dark).

---

## 2. Integrated Figma Design System (Evira)

The project includes an exported Figma design system ready for production use:
- **Design Tokens**: [lib/theme/app_colors.dart](file:///d:/Flutter_project/e_commerce_app_v1/lib/theme/app_colors.dart), [lib/theme/app_shapes.dart](file:///d:/Flutter_project/e_commerce_app_v1/lib/theme/app_shapes.dart), and [lib/theme/app_theme.dart](file:///d:/Flutter_project/e_commerce_app_v1/lib/theme/app_theme.dart).
- **Responsive Layout System**: [lib/utils/design_scale.dart](file:///d:/Flutter_project/e_commerce_app_v1/lib/utils/design_scale.dart) (scaled mobile canvas) and [lib/utils/screen_dp.dart](file:///d:/Flutter_project/e_commerce_app_v1/lib/utils/screen_dp.dart).
- **Icons & Assets**: Local assets declared in `pubspec.yaml` (`assets/images/`) and Cupertino/Material icon fallbacks.
- **4-Tab Mobile Navigation Shell**:
  1. **Home**: Feed, banners, categories, and top products.
  2. **Search / Catalog**: Grid search with sorting and category filtering.
  3. **Cart**: Live badge with item count, cart item list, and checkout action.
  4. **Profile**: User info, wishlist, orders, and theme mode toggle.

---

## 3. Tech Stack & Dependencies

| Dependency | Purpose | Version |
| :--- | :--- | :--- |
| **Flutter SDK** | Framework | `^3.13.3` |
| **`http`** | REST API client for DummyJSON | `^1.2.0` |
| **`provider`** | Reactive state management for Catalog, Cart, & Navigation | `^6.1.2` |
| **`cached_network_image`** | Robust network image caching with shimmer placeholder | `^3.3.1` |
| **`intl`** | Currency formatting & localization | `any` |

---

## 4. Commands

```powershell
# Install dependencies
flutter pub get

# Static Analysis
flutter analyze

# Unit & Widget Tests
flutter test

# Run Dev Application
flutter run
```

---

## 5. Project Architecture & Directory Layout

```text
lib/
├── core/
│   ├── constants/             # API constants (DummyJSON endpoints)
│   ├── network/               # Http helper & error mapper
│   └── models/                # ProductModel, ReviewModel, DimensionsModel
├── theme/                     # Figma Evira AppColors, AppShapes, AppTheme
├── utils/                     # DesignScale, ScreenDp, HexColor, AppImage
├── features/
│   ├── navigation/
│   │   ├── presentation/      # MainBottomNavigationScaffold, TabItem
│   │   └── state/             # NavigationProvider
│   ├── home/
│   │   └── presentation/      # HomeScreen, PromoBanner, SpecialOffersSection
│   ├── products/
│   │   ├── data/              # ProductRepository, DummyJsonDataSource
│   │   ├── presentation/      # ProductCard, ProductGrid, ProductDetailScreen
│   │   └── state/             # ProductProvider
│   ├── cart/
│   │   ├── data/              # CartItemModel
│   │   ├── presentation/      # CartScreen, CartItemTile, CartSummary
│   │   └── state/             # CartProvider
│   └── profile/
│       └── presentation/      # ProfileScreen, ThemeToggleTile
└── main.dart                  # App bootstrap with Providers & MaterialApp
```

---

## 6. Testing Strategy

1. **Model Serialization Tests** (`test/models/product_model_test.dart`): Validate parsing of DummyJSON response payloads.
2. **State & Logic Tests** (`test/state/cart_provider_test.dart`): Test adding, updating quantity, removing items, and total calculation.
3. **Navigation & Smoke Tests** (`test/widget_test.dart`): Verify bottom navigation switching and shell rendering.

---

## 7. Success Criteria
- `flutter analyze` passes with 0 errors or warnings.
- Clean Light and Dark theme switching supported via `AppTheme`.
- Bottom navigation reliably switches between Home, Catalog/Search, Cart, and Profile.
- Products from `https://dummyjson.com/products` render smoothly in the UI.
- All unit and widget tests pass.
