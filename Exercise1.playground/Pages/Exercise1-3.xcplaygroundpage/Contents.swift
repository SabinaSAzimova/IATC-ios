import Foundation

var randomInt = Int.random(in: 10...20)

if randomInt % 4 == 0 {
    print("\(randomInt) divided by 4 is \(randomInt/4)")
}
else {
    print("\(randomInt) divided by 4 is \(Float(randomInt)/4)")
}
