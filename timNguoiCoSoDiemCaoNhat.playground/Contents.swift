
import Foundation



func timDiemMax(danhSachDiem: String) -> (soLonNhat: Int, viTriSoLonNhat: Int) {
    var soLonNhat = 0
    var viTriSoLonNhat  = 0
    var dem = 0
    for diem in danhSachDiem {
        if diem != Character.init("|") {
            dem += 1
            let diem: Int = Int(String(diem))!
            if diem > soLonNhat {
                soLonNhat = diem
                viTriSoLonNhat = dem
            }
        }
        
    }
    return (soLonNhat, viTriSoLonNhat)
}

var (soMax, viTrimax) = timDiemMax(danhSachDiem: points)
print(soMax, viTrimax)



func timTen(danhSachTen: String, viTriTenCanTim: Int) -> (String) {
    var tenCanTim = ""
    var viTri = 0
    for ten in danhSachTen {
        if ten != "|" {
            if viTri == viTriTenCanTim - 1 {
                tenCanTim.append(ten)
            }
        } else {
            viTri += 1
        }
    }
    return tenCanTim
}

var nameStudents = "Chuonggg|Hop|Dat|Tuan"
var points = "4|8|1|5|1"

var (soLonNhat,viTriSoLonNhat) = timDiemMax(danhSachDiem: points)
var nguoiCoDiemCaoNhat = timTen(danhSachTen: nameStudents, viTriTenCanTim: viTrimax)

print("Nguoi co diem cao nhat la: \(nguoiCoDiemCaoNhat) diem so la \(soLonNhat)")
