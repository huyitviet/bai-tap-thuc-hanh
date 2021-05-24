func diemDung(diemToan: Double,
              diemVan: Double,
              diemAnh: Double) -> Bool {
    if toan >= 0 && toan <= 10
        && van >= 0 && van <= 10
        && anh >= 0 && anh <= 10 {
        return true
    }
    return false
}

func xepLoaiHocSinh(
    diemToan: Double,
    diemVan: Double,
    diemAnh: Double) -> String {
    let ketQua: Double = (diemToan + diemVan + diemAnh)/3
    if ketQua >= 8.5 {
        return "Giỏi"
    }
    if ketQua <= 3.9 {
        return "Trung bình"
    }
    if ketQua >= 4.0 && ketQua <= 6.4 {
        return "Trung bình khá"
    }
    return "Khá"
}

var diemToan = "*"
var diemVan = "10"
var diemAnh = "6"


func epKieuso(diemT: String, diemV: String,diemA: String) -> (a: Double,b: Double,c: Double,d: Bool){
    if Double(String(diemT)) == nil  || Double(String(diemV)) == nil || Double(String(diemA)) == nil {
        return (a: 0,b: 0,c: 0,d: false);
    }
    return (a: Double(String(diemT)) ?? 0,b: Double(String(diemV)) ?? 0,c: Double(String(diemA)) ?? 0, d: true);
}

let resultEpKieu = epKieuso(diemT: diemToan, diemV: diemVan, diemA: diemAnh);
let toan = resultEpKieu.a
let van = resultEpKieu.b
let anh = resultEpKieu.c

if resultEpKieu.d && diemDung(diemToan: toan, diemVan: van, diemAnh: anh){
    let xepLoai:String = xepLoaiHocSinh(diemToan: resultEpKieu.a, diemVan: resultEpKieu.b, diemAnh: resultEpKieu.c)
       print(xepLoai)
} else {
    print("Định dạng điểm của bạn chưa chính xác.")
}

