const List<String> kategori = [
  "Disk Grubu",
  "Kaz Ayağı Grubu",
  "Bıçak Grubu",
  "Çizel Bıçakları",
  "Yem Karma Bıçakları",
  "Pancar Sökme Bıçakları",
  "Rotovatör Bıçakları",
  "Sılaj Bıçakları",
  "Pulluk Uç Demiri"
];

Map<String, String> mapKategori() {
  Map<String, String> maplemece = {};
  int _index = 0;

  kategori.forEach((val) {
    _index++;
    maplemece[val] = "kategoriler/" + _index.toString() + ".png";
  });

  return maplemece;
}

final Map<String, List<Map<String, String>>> detayPictures = {
  "kategoriler/1.png": [
    {"DetayPictures/1/1.JPG": "Disk"}
  ],
  "kategoriler/2.png": [
    {"DetayPictures/2/1.jpg": "C-01 Kaz Ayağı"},
    {"DetayPictures/2/2.jpg": "C-03 Kaz Ayağı"},
    {"DetayPictures/2/3.jpg": "C-05 Kaz Ayağı"},
    {"DetayPictures/2/4.jpg": "C-08 Kaz Ayağı"}
  ],
  "kategoriler/3.png": [
    {"DetayPictures/3/1.jpg": "B-05 Bıçak"},
    {"DetayPictures/3/2.jpg": "B-06 Bıçak"},
    {"DetayPictures/3/3.jpg": "B-12 Bıçak"}
  ],
  "kategoriler/4.png": [
    {"DetayPictures/4/1.jpg": "T-01 Çizel Bıçak"},
    {"DetayPictures/4/2.jpg": "T-02 Çizel Bıçak"},
    {"DetayPictures/4/3.jpg": "T-03 Çizel Bıçak"},
    {"DetayPictures/4/4.jpg": "T-05 Çizel Bıçak"}
  ],
  "kategoriler/5.png": [
    {"DetayPictures/5/1.jpg": "F-01 Yem Karma Bıçağı"},
    {"DetayPictures/5/2.jpg": "F-02 Yem Karma Bıçağı"},
    {"DetayPictures/5/3.jpg": "F-03 Yem Karma Bıçağı"},
    {"DetayPictures/5/4.jpg": "F-04 Yem Karma Bıçağı"},
    {"DetayPictures/5/5.jpg": "F-05 Yem Karma Bıçağı"},
    {"DetayPictures/5/6.jpg": "F-09 Yem Karma Bıçağı"}
  ],
  "kategoriler/6.png": [
    {"DetayPictures/6/1.jpg": "S-01 Pancar Sökme Bıçağı"},
    {"DetayPictures/6/2.jpg": "S-02 Pancar Sökme Bıçağı"},
    {"DetayPictures/6/3.jpg": "S-03 Pancar Sökme Bıçağı"},
    {"DetayPictures/6/4.jpg": "S-05 Pancar Sökme Bıçağı"},
    {"DetayPictures/6/5.jpg": "S-06 Pancar Sökme Bıçağı"},
    {"DetayPictures/6/6.jpg": "S-07 Pancar Sökme Bıçağı"}
  ],
  "kategoriler/7.png": [
    {"DetayPictures/7/1.jpg": "R-01 Pancar Sökme Bıçağı"},
    {"DetayPictures/7/2.jpg": "R-03 Pancar Sökme Bıçağı"},
    {"DetayPictures/7/3.jpg": "R-07 Pancar Sökme Bıçağı"}
  ],
  "kategoriler/8.png": [
    {"DetayPictures/8/1.jpg": "B-01 Sılaj Bıçağı"},
    {"DetayPictures/8/2.jpg": "B-02 Sılaj Bıçağı"},
    {"DetayPictures/8/3.jpg": "B-03 Sılaj Bıçağı"},
    {"DetayPictures/8/4.jpg": "B-04 Sılaj Bıçağı"}
  ],
  "kategoriler/9.png": [
    {"DetayPictures/9/1.jpg": "P-01 Pulluk Uç Demiri"},
    {"DetayPictures/9/2.jpg": "P-02 Pulluk Uç Demiri"},
    {"DetayPictures/9/3.jpg": "P-03 Pulluk Uç Demiri"},
    {"DetayPictures/9/4.jpg": "P-06 Pulluk Uç Demiri"}
  ],
};
