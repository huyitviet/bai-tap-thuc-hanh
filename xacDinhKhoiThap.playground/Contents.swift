let n: Int = 90

func isCreatATower(random: Int) -> Bool {
    var index = 0
    var sumIndex = 0

    while sumIndex < random && random > 0 {
        sumIndex += index
        index += 1
    }
    if sumIndex == random {
        print("\(random) tao duoc thanh thap")
        return true
    } else {
        print("\(random) khong tao duoc thanh thap")
        return false
    }
}

isCreatATower(random: 21)
