enum Action {
    case Walk(meters: Int)
    case Ran(meters: Int, speed: Int)
    case Stop
    case Turn(direction: Direction)
    
    enum Direction : String {
        case Left = "Left!"
        case Right = "Right!"
    }
}

var action /* : Action */ = Action.Ran(meters: 20, speed: 15)

action = Action.Stop

action = .Walk(meters: 10)

switch action {
case .Stop:
    print("Stop")
    
case .Walk(let meters) where meters < 100:
    print("short walk")
    
case .Walk(let meters):
    print("walk \(meters) meters")
    
case .Turn(let dir) where dir == .Left:
    print("turn Left")
    
case .Turn(let dir) where dir == .Right:
    print("turn Right")
    
default: break
}

action = Action.Turn(direction: .Right)

print(Action.Turn(direction: .Right))
