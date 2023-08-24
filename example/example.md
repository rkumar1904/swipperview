# swipper_example

Example

## Getting Started

```
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
