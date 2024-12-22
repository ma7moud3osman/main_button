# MainButton Flutter Package

## Overview

The `MainButton` package provides a flexible and customizable button widget for Flutter applications. It supports a wide range of styles and behaviors such as different button states, customizable text, icons, images, and color schemes. You can use it to create buttons with various designs, including loading indicators, shadows, and disabled states, with ease.

### Features
- **Primary, Secondary, and Tertiary Buttons**: Supports three predefined button types (`MainButtonEnum`), each with its own default styling.
- **Text, Icon, and Image Support**: The button can display text, icons, or images, giving you flexibility for different button designs.
- **Customizable**: Offers extensive customization options like button size, padding, colors, border radius, and more.
- **Loading and Disabled States**: Provides built-in support for loading indicators and disabled states.
- **Elevated or Flat Style**: You can choose whether the button has a shadow or is flat based on your design needs.

---
## Installation

1. Add the following to your `pubspec.yaml`:

```yaml
dependencies:
  main_button: <latest_version> 
```

2. to handle responsive

```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // this very important
    MainWidgetsUtil.init(
      context,
      designSize: const Size(375, 812),
      minTextAdapt: true,
    );
    return MaterialApp(
      home: const HomeScreen(),
    );
  }
}
```

## Properties

### MainButton

| Property        | Type             | Description                                                       |
|-----------------|------------------|-------------------------------------------------------------------|
| `width`         | `double?`        | Width of the button. Defaults to `double.infinity`.                |
| `height`        | `double`         | Height of the button. Default is `44`.                             |
| `padding`       | `EdgeInsets?`    | Internal padding of the button.                                    |
| `borderRadius`  | `double`         | Defines the roundness of the button's corners. Default is `8`.      |
| `onPressed`     | `VoidCallback?`  | Callback function when the button is pressed.                      |
| `label`         | `String`         | Text label displayed on the button.                                |
| `backgroundColor`| `Color?`        | Button background color.                                           |
| `textColor`     | `Color?`         | Text color of the button label.                                    |
| `disableColor`  | `Color?`         | Color used when the button is disabled.                            |
| `isLoading`     | `bool`           | Shows a loading indicator if `true`. Default is `false`.           |
| `showShadow`    | `bool`           | Adds a shadow effect if `true`. Default is `true`.                 |
| `borderColor`   | `Color`          | Color for the button's border.                                     |
| `smallSize`     | `bool`           | If `true`, renders a smaller version of the button.                |
| `isDisable`     | `bool`           | If `true`, disables the button. Default is `false`.                |
| `opacity`       | `double?`        | Opacity of the button.                                             |
| `type`          | `MainButtonEnum` | Defines the button type: `primary`, `secondary`, or `tertiary`.    |


## Usage

To use `MainButton` in your Flutter app, you can create an instance of the button and configure its properties according to your needs. Below is an example of how to use the widget:

```dart
    MainButton(
        label: "Submit",
        onPressed: () {
           print("Button Pressed");
        },
    ),
```
* __Button with Icon__

To create a button with an icon:

```dart
    MainButton.icon(
        label: "Send",
        icon: Icons.send,
        onPressed: () {
            print("Icon Button Pressed");
        },
        backgroundColor: Colors.green,
        textColor: Colors.white,
    ),
```

## Contributions
Feel free to contribute to this project.

If you find a bug or want a feature, but don't know how to fix/implement it, please fill an [issue](https://github.com/abdelrahmanghanem/main_button/issues).  
If you fixed a bug or implemented a feature, please send a [pull request](https://github.com/abdelrahmanghanem/main_button/pulls).

<a href="https://github.com/abdelrahmanghanem/main_button/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=abdelrahmanghanem/main_button"  alt=""/>
</a>

Made with [contrib.rocks](https://contrib.rocks).
 