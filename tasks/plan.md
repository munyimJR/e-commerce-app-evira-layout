# Implementation Plan: Evira E-Commerce Mobile App

## Overview
Transform the exported Figma Evira layout and design system into a fully functional Flutter e-commerce mobile application backed by live product data from the [DummyJSON Products API](https://dummyjson.com/docs/products). We will build vertically from navigation shell and theme to product catalog, search, details, and dynamic cart.

---

## Architecture Decisions
1. **State Management**: `provider` for global reactive states (`CartProvider`, `ProductProvider`, `NavigationProvider`, `ThemeProvider`).
2. **Design System Integration**: Reuse existing `lib/theme/app_theme.dart`, `app_colors.dart`, and `app_shapes.dart` so all custom widgets have native Dark/Light theme support matching the Figma export.
3. **Network Layer**: Pure `http` package with clean JSON serialization, error handling, and `cached_network_image` for fluid image rendering.
4. **Vertical Slicing**: Foundational Navigation & Theme -> Product Feed -> Product Details -> Cart & Checkout -> Search & Profile.

---

## Task List

### Phase 1: Foundation (Navigation & Theme)
- [ ] **Task 1**: Configure dependencies in `pubspec.yaml` (`provider`, `http`, `cached_network_image`) and verify build.
- [ ] **Task 2**: Implement Foundational Navigation Shell & Theme (`MainNavigationShell`, bottom bar with 4 tabs: Home, Search, Cart, Profile, and dynamic theme switching).

### Checkpoint: Foundation
- [ ] App builds clean with `flutter analyze`
- [ ] Bottom navigation switches between all 4 tabs smoothly
- [ ] Theme toggles between Light and Dark mode without errors

### Phase 2: Live Data & Product Catalog
- [ ] **Task 3**: Implement `ProductModel` and `DummyJsonService` with unit tests for JSON parsing.
- [ ] **Task 4**: Implement `ProductProvider` and Home Screen with Evira-styled product cards, banners, and category chips.
- [ ] **Task 5**: Implement `ProductDetailScreen` with image gallery, specs, review ratings, and Add-to-Cart action.

### Checkpoint: Catalog
- [ ] Live data loaded from `https://dummyjson.com/products`
- [ ] Category filtering and product details view work end-to-end
- [ ] Unit tests pass

### Phase 3: Cart, Search & Profile
- [ ] **Task 6**: Implement `CartProvider` and `CartScreen` with live cart badge on navigation bar, quantity adjustment, and checkout summary.
- [ ] **Task 7**: Implement Search screen with debounce query and Profile screen.

### Checkpoint: Complete
- [ ] End-to-end e-commerce flow works (Browse -> View Details -> Add to Cart -> Adjust Quantity)
- [ ] All tests pass and `flutter analyze` is clean
