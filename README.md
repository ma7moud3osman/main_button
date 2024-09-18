# CustomIconButton

## Overview

`CustomIconButton` is a versatile Flutter widget designed to provide a customizable button with various styling and functional options. It supports different states, including loading and disabled, and allows you to configure its appearance with properties like padding, border radius, and colors. You can use it to display an image, an icon, or text.

## Features

- **Customizable Width**: Set a specific width for the button or use a default width.
- **Padding & Border Radius**: Adjust internal padding and corner roundness.
- **Interactive States**: Handle press events and manage loading or disabled states.
- **Flexible Content**: Display text, an icon, or an image inside the button.
- **Styling Options**: Customize background color, text color, border color, opacity, and shadow.

## Properties

- `width`: The width of the button. If `null`, a default width is used.
- `padding`: Internal padding of the button. Default is `12`.
- `borderRadius`: Radius of the button's corners. Default is `8`.
- `onPressed`: Callback triggered when the button is pressed. If `null`, the button will not respond to taps.
- `label`: Text to display on the button. If `null`, no text will be shown.
- `child`: A widget to display inside the button for custom content.
- `imagePath`: Path to an image asset to display inside the button. If `null`, no image will be shown.
- `icon`: A widget to use as an icon inside the button. If `null`, no icon will be shown.
- `backgroundColor`: Background color of the button. Defaults to theme's primary color if `null`.
- `textColor`: Color of the text displayed on the button. Defaults to theme's scaffold background color if `null`.
- `disableColor`: Color of the button when it is disabled. Defaults to a theme-based color if `null`.
- `isLoading`: If `true`, the button will display a loading indicator.
- `opacity`: Controls the button's transparency. Defaults to `0.5` if `null`.
- `showShadow`: If `true`, a shadow will be applied to the button.
- `borderColor`: Color of the button's border.
- `smallSize`: If `true`, renders the button smaller.
- `isDisable`: If `true`, renders the button in a disabled state.

## Usage

To use `CustomIconButton` in your Flutter app, you can create an instance of the button and configure its properties according to your needs. Below is an example of how to use the widget:

```dart
CustomIconButton(
  width: 100,
  padding: 16,
  borderRadius: 12,
  onPressed: () {
    // Handle button press
  },
  label: 'Click Me',
  icon: Icon(Icons.add),
  imagePath: 'assets/my_image.png',
  backgroundColor: Colors.blue,
  textColor: Colors.white,
  disableColor: Colors.grey,
  isLoading: false,
  showShadow: true,
  opacity: 0.8,
  borderColor: Colors.black,
  smallSize: false,
  isDisable: false,
)
