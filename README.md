# swipperview

A new Flutter package project.

## Getting Started

```dart
  body: Swipper(
        data: productList,
        icon: Icons.headphones,
        onChange: (page) {
          print('swipped $page');
        },
        actionName: 'Buy Now',
        actionHandler: (index) {
          print('action Click $index');
        },
      ),
```


This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
