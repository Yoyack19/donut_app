# 🍩 Flutter Donut Shop App

A **Flutter-based mobile application** featuring a clean and intuitive interface that allows users to explore various food categories such as donuts, burgers, smoothies, pancakes, and pizzas.  
Each category displays a grid of products with their image, flavor, price, and provider — all dynamically styled with elegant color accents.

---

## ⚙️ Main Features

➡️ **Tabbed Navigation:** Navigate smoothly between categories using a `TabBar` and `TabBarView`.  
➡️ **Product Grid:** Displays food items in a responsive layout built with `GridView.builder`.  
➡️ **Dynamic Styling:** Background colors adapt to each product’s flavor or theme.  
➡️ **Interactive Actions:** Each product tile includes “Add” and “Favorite” options.  
➡️ **Minimal AppBar Design:** Clean layout with a menu icon and user profile shortcut.

---

## 🧩 Core Widgets Overview

| Widget | Description |
|--------|--------------|
| **HomePage** | The main stateful widget that manages tab navigation and layout. |
| **DonutTab** | Builds a grid of donut items using `DonutTile` widgets. |
| **MyTab** | Custom widget for the tab icons and titles. |
| **DonutTile** | Reusable widget displaying product image, price, supplier, and action buttons. |

---

## 🛠️ Technologies Used

- 🧱 **Flutter (Dart SDK)** – Core framework for UI and navigation.  
- 🎨 **Material Design Components** – For layout and styling consistency.  
- 🖼️ **Image Assets & Custom Icons** – Visual representation of products.  
- 🔄 **Widget Composition** – Modular and scalable UI structure.

---

## 📁 Project Structure
- lib/
- ├── main.dart # Entry point
- ├── screens/
- | ├── home_page.dart # Home page with tab navigation
- ├── tab/
- │ ├── donut_tab.dart # Donut tab screen
- │ ├── burger_tab.dart # Burger tab screen
- │ ├── smoothie_tab.dart # Smoothie tab screen
- │ ├── pancakes_tab.dart # Pancakes tab screen
- │ └── pizza_tab.dart # Pizza tab screen
- ├── utils/
- │ ├── donut_tile.dart # Custom widget for product tiles
- │ └── my_tab.dart # Custom widget for tabs
- ├── icons/ # PNG icons for each tab
- └── images/ # Product images (donuts, burgers, etc.)

![DEMO](file:///C:/Users/Josue/Videos/Captures/Flutter%20Demo%20-%20Google%20Chrome%202025-10-26%2021-37-06.mp4)

## 🎓 Academic Data
- *Course: Aplicaiones moviles*.
- *Teacher: Rodrigo Fidel Gaxiola Sosa*.
- *Institution: Instituto Tecnológico de Mérida*.

## Credits
- ➡️ Dribbble – [Donut App Concept by Mohammad Shoaib](https://dribbble.com/shots/19649140-App-UI)
