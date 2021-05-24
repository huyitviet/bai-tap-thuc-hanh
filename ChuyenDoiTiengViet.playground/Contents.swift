import UIKit

//
//var boQuyTac = "ox*õ|of*ò|oof*ồ|oo*ô"
//var str = "Roofng"


//var kyTuChuyenDoiTam1 = Character("#")
//var kyTuChuyenDoiTam2 = Character("#")
//var kyTuChuyenDoiTam3 = Character("#")
//var kyTuChuyenDoi = Character("#")
//for kyTuHienTai in str {
//    for kyTuBoQuyTac in boQuyTac {
//        if kyTuHienTai == kyTuBoQuyTac {
//            if kyTuChuyenDoiTam1 == Character("#") {
//                kyTuChuyenDoiTam1 = kyTuHienTai
//            } else if kyTuChuyenDoiTam2 == Character("#") {
//                kyTuChuyenDoiTam2 = kyTuHienTai
//            } else if kyTuChuyenDoiTam3 == Character("#") {
//                kyTuChuyenDoiTam3 = kyTuHienTai
//            }
//        }
//    }
//}

var boQuyTac = "ox|õof|òoj|ọos|óor|ỏoo|ôoof|ồoos|ốoor|ổooj|ộ"

var str = "Roofng"

var kyTuChuyenDoiTam1 = Character("o")
var kyTuChuyenDoiTam2 = Character("o")
var kyTuChuyenDoiTam3 = Character("j")
var coKhaNangThanh1Bo2 = false
var coKhaNangThanh1Bo3 = false
var ketthucChuyenDoi = false



for kytu in boQuyTac {
    if ketthucChuyenDoi {
        if   kytu != kyTuChuyenDoiTam1 && kytu != kyTuChuyenDoiTam2 && kytu != kyTuChuyenDoiTam3 && kytu != Character("|")
            && coKhaNangThanh1Bo2 == true
            && coKhaNangThanh1Bo3 == true{
            print("Ket qua: \(kytu)")
            break
        }
    } else {
        if kytu == kyTuChuyenDoiTam1 && coKhaNangThanh1Bo2 == false {
            coKhaNangThanh1Bo2 = true
        } else if kytu == kyTuChuyenDoiTam2
                    && coKhaNangThanh1Bo2 == true {
                coKhaNangThanh1Bo3 = true
        } else if kytu == kyTuChuyenDoiTam3
                    && coKhaNangThanh1Bo2 == true
                    && coKhaNangThanh1Bo3 == true {
                    ketthucChuyenDoi = true
        } else if kytu != kyTuChuyenDoiTam2 && coKhaNangThanh1Bo2 == true {
            coKhaNangThanh1Bo2 = false
        } else if kytu != kyTuChuyenDoiTam3 && coKhaNangThanh1Bo2 == true && coKhaNangThanh1Bo2 == true {
            coKhaNangThanh1Bo3 = false
        }
    }
}


