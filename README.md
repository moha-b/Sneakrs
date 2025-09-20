# Sneakrs 🏃‍♂️

A modern iOS sneaker e-commerce app built with SwiftUI, featuring a clean and minimalist design for browsing and purchasing sneakers from top brands.

![Sneakrs App Screenshots](Screenshot%202025-09-20%20at%2010.52.10%20AM.png)

## Features

### 🏠 Home Screen
- **Search Functionality**: Quick search bar to find your favorite sneakers
- **Top Brands Section**: Easy access to popular brands (Nike, Adidas, Puma, Jordan)
- **Popular Products**: Curated selection of trending sneakers in a clean grid layout
- **Navigation**: Intuitive bottom navigation with Home, Favorites, Cart, and Profile

### 📱 Product Details
- **Image Carousel**: Multiple product images with smooth navigation
- **Detailed Information**: Comprehensive product descriptions and pricing
- **Color Options**: Visual color swatches for easy selection
- **Size Selection**: Dropdown size picker for perfect fit
- **Add to Cart**: One-tap purchase functionality


## Tech Stack

- **SwiftUI**: Modern declarative UI framework
- **iOS**: Native iOS development
- **JSON Data**: Local product and brand data management
- **Asset Management**: Optimized image assets for all screen sizes

## Project Structure

```
Sneakrs/
├── ContentView.swift          # Main app view
├── ItemCard.swift            # Product card component
├── ProductDetails.swift      # Product detail screen
├── SneakrsApp.swift         # App entry point
├── data/                    # Data models and JSON files
│   ├── brand.swift
│   ├── brands.json
│   ├── brands.swift
│   ├── Product.swift
│   ├── products.json
│   └── Products.swift
└── Assets.xcassets/         # App icons and images
    ├── AppIcon.appiconset/
    ├── nike.imageset/
    ├── adidas.imageset/
    ├── puma.imageset/
    ├── jordan.imageset/
    └── [product images]
```

## Getting Started

1. **Clone the repository**
   ```bash
   git clone [repository-url]
   cd Sneakrs
   ```

2. **Open in Xcode**
   ```bash
   open Sneakrs.xcodeproj
   ```

3. **Build and Run**
   - Select your target device or simulator
   - Press `Cmd + R` to build and run

## Requirements

- iOS 15.0+
- Xcode 13.0+
- Swift 5.5+

