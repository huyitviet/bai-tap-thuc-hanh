//
//
//var strName = "CCCuoooonnng"
//var chuoi1 = "huyyyyyyyyydepzaai"
//
//
//func timChuoiDaiNhat(str: String) -> (Character, Int) {
//    var maxLength = 0
//    var kyTuMaxLength:Character = Character("m")
//
//    var maxLengthTam = 0
//    var kyTuMaxLengthTam: Character = Character("m")
//
//    for kytuHienTai in str {
//        if kytuHienTai == kyTuMaxLength {
//            maxLength += 1
//        } else {
//            if kytuHienTai == kyTuMaxLengthTam {
//                maxLengthTam += 1
//            } else {
//                maxLengthTam = 1
//            }
//            kyTuMaxLengthTam = kytuHienTai
//
//        }
//
//        if maxLengthTam > maxLength {
//            maxLength = maxLengthTam
//            kyTuMaxLength = kyTuMaxLengthTam
//            maxLengthTam = 0
//
//        }
//    }
//    print("Ky tu \(kyTuMaxLength) co do dai la \(maxLength)")
//    return (kyTuMaxLength, maxLength)
//
//
//}
//
//timChuoiDaiNhat(str: strName)






var strName = "CCCuoooonnng"
var chuoi1 = "huyyyyyyyyydepzaai"

func timKyTuDaiNhat(Str: String) -> (Character, Int) {
    var kyTuMax:Character = Character("s")
    var maxLengthKytu = 0
    
    var kyTuTam:Character = Character("a")
    var maxLengthKyTuTam = 0
    
    for kyTuHienTai in Str {
        if kyTuHienTai == kyTuMax {
            maxLengthKytu += 1
        } else {
            if kyTuHienTai == kyTuTam {
            maxLengthKyTuTam += 1
            } else {
                maxLengthKyTuTam = 1
            }
            kyTuTam = kyTuHienTai
            
            if maxLengthKyTuTam > maxLengthKytu {
                maxLengthKytu = maxLengthKyTuTam
                kyTuMax = kyTuHienTai
                maxLengthKyTuTam = 0
            }
        }
    }
    print("\(kyTuMax), \(maxLengthKytu)")
    return (kyTuMax, maxLengthKytu)
    
}
timKyTuDaiNhat(Str: strName)
