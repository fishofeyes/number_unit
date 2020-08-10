# timercounter

倒计时工具.

## Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.

## Usage

It is really easy to use!
You should ensure that you add the `timercounter` as a dependency in your flutter project.

```yaml
dependencies:
  numberunit: ^0.0.1
```

## Example
``` dart
final val = NumberUnit.thousandFormat(1000);
print(val); // 1,000
final val1 = NumberUnit.thousandFormat(-1000);
print(val1); // -1,000
```
