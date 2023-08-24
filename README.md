# Swipperview 🎉

<img src="https://github.com/rkumar1904/swipperview/raw/master/assets/vid.gif" height="300" />

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

```dart
List<Map<String, dynamic>> productList = [
    {
      'title': '#1 Product of the Day',
      'description':
          '#1 This project is a starting point for a Dart package, a library module containing code that can be shared easily across multiple Flutter or Dart projects.',
      'url':
          'https://images.unsplash.com/photo-1611930022073-b7a4ba5fcccd?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHN8ZW58MHwxfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
    },
    {
      'title': '#2 Product of the Day',
      'description':
          '#2 This project is a starting point for a Dart package, a library module containing code that can be shared easily across multiple Flutter or Dart projects.',
      'url':
          'https://images.unsplash.com/photo-1610824352934-c10d87b700cc?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fHByb2R1Y3RzfGVufDB8MXwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
    },
    {
      'title': '#3 Product of the Day',
      'description':
          '#3 This project is a starting point for a Dart package, a library module containing code that can be shared easily across multiple Flutter or Dart projects.',
      'url':
          'https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fHByb2R1Y3RzfGVufDB8MXwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
    },
    {
      'title': '#4 Product of the Day',
      'description':
          '#4 This project is a starting point for a Dart package, a library module containing code that can be shared easily across multiple Flutter or Dart projects.',
      'url':
          'https://images.unsplash.com/photo-1556228720-195a672e8a03?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTR8fHByb2R1Y3RzfGVufDB8MXwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
    },
  ];

```



<img src="https://github.com/rkumar1904/swipperview/raw/master/assets/1.png?raw=true" height="400" />
<img src="https://github.com/rkumar1904/swipperview/raw/master/assets/2.png?raw=true" height="400" />



This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
