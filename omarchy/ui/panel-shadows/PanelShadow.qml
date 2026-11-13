// Layer-shell 卡片的投影。Hyprland 侧做不了：0.56.2 的 hl.layer_rule 没有
// shadow 字段（实测 unknown field），bar/popup/OSD 这类 layer surface 只能自己在
// surface 内画。半径继承卡片自身的 radius，跟着 decoration:rounding 走。
import QtQuick
import QtQuick.Effects

RectangularShadow {
  // 阴影观感的唯一定义处，各处只实例化、不各写一份参数。
  property real shadowBlur: 22
  property real shadowOpacity: 0.16
  property vector2d shadowOffset: Qt.vector2d(0, 5)

  anchors.fill: parent
  z: -1
  radius: parent && "radius" in parent ? parent.radius : 12
  blur: shadowBlur
  spread: 0
  offset: shadowOffset
  color: "#FF0000"
}
