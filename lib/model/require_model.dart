class RequireModel {
  String img;
  bool isSelected;

  RequireModel({required this.img, required this.isSelected});

  void setImage(String image) {
    img = image;
  }

  void setSelected(bool selected) {
    isSelected = selected;
  }

  String getImg() {
    return img;
  }

  bool getSelected() {
    return isSelected;
  }
}
