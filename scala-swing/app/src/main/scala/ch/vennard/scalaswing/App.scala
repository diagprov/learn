package ch.vennard.scalaswing

import scala.swing._

class UI extends MainFrame {
  title = "GUI Program #1"
  preferredSize = new Dimension(320, 240)
  contents = new Label("Here is the contents!")
}

object App {
  def main(args: Array[String]): Unit = {
    val ui = new UI
    ui.visible = true
  }
}
