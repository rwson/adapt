# adapt

flutter屏幕适配插件

## 使用

```yaml
dependencies:
 adapt:
   git: git://github.com/rwson/adapt.git
```

## 导入

```dart
import 'package/adapt/adapt.dart';
```

## api

#### `static Adapt.init(double number)`

初始化设计稿尺寸, 默认750

#### `static Adapt.onePx()`

用于边框设置

#### `static Adapt.px(double number)`

把设计稿上的像素转换为当前分辨率对应的真实像素，用于设置字号、容器大小等

#### `static Adapt.screenW()`

返回当前横向分辨率

#### `static Adapt.screenH()`

返回当前纵向分辨率