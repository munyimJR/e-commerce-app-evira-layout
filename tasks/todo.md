# Task List: Evira E-Commerce Mobile App

## Task 1: Configure Dependencies
**Description:** Add necessary networking and state management packages to `pubspec.yaml` (`provider`, `http`, `cached_network_image`).

**Acceptance criteria:**
- [x] Dependencies added without conflicting with existing flutter sdk constraints.
- [x] `flutter pub get` completes successfully.

**Verification:**
- [x] Build succeeds: `flutter pub get`
- [x] Analyzer passes: `flutter analyze`

**Files touched:**
- `pubspec.yaml`

---

## Task 2: Build Foundational Navigation Shell & Theme Integration
**Description:** Implement `MainNavigationShell` widget that connects with `lib/theme/` (Light and Dark `ThemeData`), provides a 4-tab bottom navigation bar (`Home`, `Search`, `Cart`, `Profile`) adhering to Evira styles, and wire up `lib/main.dart` to launch this shell.

**Acceptance criteria:**
- [x] 4-tab Bottom Navigation bar rendered with Evira icons/styling and active indicator.
- [x] Smooth tab switching between placeholders for Home, Search, Cart, Profile.
- [x] Theme toggling works seamlessly (Light / Dark mode).

**Verification:**
- [x] Analyzer passes: `flutter analyze`
- [x] Widget tests pass: `flutter test`

**Files touched:**
- `lib/features/navigation/presentation/main_navigation_shell.dart`
- `lib/core/theme/theme_provider.dart`
- `lib/main.dart`
- `test/widget_test.dart`

---

## Checkpoint: Foundation (Tasks 1-2)
- [x] Dependencies installed cleanly
- [x] Bottom navigation and Theme shell functioning properly
- [x] `flutter analyze` has 0 warnings or errors

---

## Task 3: Core Models & DummyJSON DataSource
**Description:** Implement `ProductModel`, review models, and `DummyJsonService` to fetch live products from `https://dummyjson.com/products`.

**Acceptance criteria:**
- [x] `ProductModel.fromJson` correctly deserializes all API fields (id, title, price, discount, rating, thumbnail, images, reviews).
- [x] `DummyJsonService.getProducts()` retrieves and parses live products.
- [x] Unit tests verify serialization and discount price helpers.

**Verification:**
- [x] Tests pass: `flutter test test/models/product_model_test.dart`

**Files touched:**
- `lib/core/models/product_model.dart`
- `lib/core/network/dummy_json_service.dart`
- `test/models/product_model_test.dart`

---

## Task 4: Product Feed & Home Screen
**Description:** Implement `ProductProvider` to manage products state (loading, loaded, error) and build the Evira-styled `HomeScreen` with carousel banner, category filter pills, and product grid cards.

**Acceptance criteria:**
- [x] Products load from DummyJSON and display in a 2-column grid.
- [x] Product cards show thumbnail, title, brand, rating star, and price with discount tag.
- [x] Category chips allow filtering products by category.

**Verification:**
- [x] Analyzer passes: `flutter analyze`

**Files touched:**
- `lib/features/products/state/product_provider.dart`
- `lib/features/home/presentation/home_screen.dart`
- `lib/features/products/presentation/widgets/product_card.dart`

---

## Task 5: Product Details Screen
**Description:** Build `ProductDetailScreen` showing full image gallery, title, rating, description, stock status, reviews, and dynamic "Add to Cart" sticky bottom bar.

**Acceptance criteria:**
- [x] Tapping any product card navigates to `ProductDetailScreen`.
- [x] Image gallery swiper, rating breakdown, and description rendered cleanly.
- [x] "Add to Cart" button interacts with Cart state.

**Verification:**
- [x] Analyzer passes: `flutter analyze`

**Files touched:**
- `lib/features/products/presentation/screens/product_detail_screen.dart`

---

## Task 6: Shopping Cart & Live Badge
**Description:** Implement `CartProvider` and `CartScreen` with item list, increment/decrement controls, live badge on bottom navigation, and order summary.

**Acceptance criteria:**
- [ ] Cart tab displays total item count badge on bottom navigation.
- [ ] Cart screen lists items with quantity increment/decrement/delete controls.
- [ ] Subtotal and discount totals calculate accurately.

**Verification:**
- [ ] Cart unit tests pass: `flutter test test/state/cart_provider_test.dart`

**Files touched:**
- `lib/features/cart/state/cart_provider.dart`
- `lib/features/cart/presentation/screens/cart_screen.dart`
- `test/state/cart_provider_test.dart`

---

## Task 7: Search Screen & Profile
**Description:** Implement `SearchScreen` with live query filtering and `ProfileScreen` with user profile header and Light/Dark theme toggle.

**Acceptance criteria:**
- [x] Search query dynamically filters product results with debounced DummyJSON query.
- [x] Profile screen allows toggling between Light and Dark mode.

**Verification:**
- [x] Analyzer passes: `flutter analyze`
- [x] Full test suite passes: `flutter test`
