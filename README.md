# ListView Empty Builder Extension

A simple Flutter extension that allows you to display a custom widget when a `ListView` is empty, directly on the `ListView` widget.

## Screenshots

### Example Output
![Screenshot 1](https://raw.githubusercontent.com/chrystoffer/listview_empty_builder/main/screenshots/001.png)
![Screenshot 2](https://raw.githubusercontent.com/chrystoffer/listview_empty_builder/main/screenshots/002.png)

## Installation

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  listview_empty_builder: latest_version
```

Then run:

```sh
flutter pub get
```

## Usage

Import the package:

```dart
import 'package:listview_empty_builder/listview_empty_builder.dart';
```

Use the `.emptyBuilder` extension on a `ListView` to define a widget that will be displayed when the list is empty:

```dart
import 'package:flutter/material.dart';
import 'package:listview_empty_builder/listview_empty_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("ListView Empty Builder Example")),
        body: ListView(
          children: [], // Empty list
        ).emptyBuilder(
          builder: () => Center(child: Text("No items available")),
        ),
      ),
    );
  }
}
```

## Features
✅ Easily handle empty list states inside `ListView`.
✅ No need for additional conditional checks in your widgets.
✅ Works seamlessly with `ListView.builder` and `ListView(children: [])`.


## License
This package is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

