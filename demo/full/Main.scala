// using scala 3.1.0
// using lib org.typelevel::cats-effect:3.2.9
import cats.effect._

object Main extends IOApp.Simple { def run = IO.println("I'm in docker with Cats!") }
