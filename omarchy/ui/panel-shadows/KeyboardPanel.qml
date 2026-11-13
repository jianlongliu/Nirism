// 带投影的 KeyboardPanel：stock qs.Ui 不动，只在这里包一层。
// 只给自建插件用（jianlongliu.audio/.bluetooth/.network），omarchy 官方组件不碰。
import QtQuick
import qs.Ui as Ui

Ui.KeyboardPanel {
  PanelShadow {
    // 默认插槽是卡片里的内容容器，上一层才是卡片本体。
    Component.onCompleted: parent = parent.parent
  }
}
