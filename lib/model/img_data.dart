import '/model/require_model.dart';

int points = 0;
bool selectedImg = false;

String selectedImage = "";
int selectedIndex = 0;

List<RequireModel> visiblePairs = <RequireModel>[];

List<RequireModel> pairs = <RequireModel>[];

List<RequireModel> getPairs() {
  List<RequireModel> pairs = <RequireModel>[];

  RequireModel requireModel = RequireModel(img: '', isSelected: true);
  requireModel.setImage("assets/images/html.png");
  requireModel.setSelected(false);
  pairs.add(requireModel);
  pairs.add(requireModel);

  requireModel = RequireModel(img: '', isSelected: true);
  requireModel.setImage("assets/images/css.png");
  requireModel.setSelected(false);
  pairs.add(requireModel);
  pairs.add(requireModel);

  requireModel = RequireModel(img: '', isSelected: true);
  requireModel.setImage("assets/images/js.png");
  requireModel.setSelected(false);
  pairs.add(requireModel);
  pairs.add(requireModel);

  requireModel = RequireModel(img: '', isSelected: true);
  requireModel.setImage("assets/images/node.png");
  requireModel.setSelected(false);
  pairs.add(requireModel);
  pairs.add(requireModel);

  requireModel = RequireModel(img: '', isSelected: true);
  requireModel.setImage("assets/images/react.png");
  requireModel.setSelected(false);
  pairs.add(requireModel);
  pairs.add(requireModel);

  requireModel = RequireModel(img: '', isSelected: true);
  requireModel.setImage("assets/images/flutter.png");
  requireModel.setSelected(false);
  pairs.add(requireModel);
  pairs.add(requireModel);

  requireModel = RequireModel(img: '', isSelected: true);
  requireModel.setImage("assets/images/mysql.png");
  requireModel.setSelected(false);
  pairs.add(requireModel);
  pairs.add(requireModel);

  requireModel = RequireModel(img: '', isSelected: true);
  requireModel.setImage("assets/images/java.png");
  requireModel.setSelected(false);
  pairs.add(requireModel);
  pairs.add(requireModel);

  requireModel = RequireModel(img: '', isSelected: true);
  requireModel.setImage("assets/images/firebase.png");
  requireModel.setSelected(false);
  pairs.add(requireModel);
  pairs.add(requireModel);

  return pairs;
}

List<RequireModel> getQuestions() {
  List<RequireModel> pairs = <RequireModel>[];

  RequireModel requireModel = RequireModel(img: '', isSelected: true);
  requireModel.setImage("assets/images/soul.png");
  requireModel.setSelected(false);
  pairs.add(requireModel);
  pairs.add(requireModel);

  requireModel = RequireModel(img: "", isSelected: true);
  requireModel.setImage("assets/images/soul.png");
  requireModel.setSelected(false);
  pairs.add(requireModel);
  pairs.add(requireModel);

  requireModel = RequireModel(img: "", isSelected: true);
  requireModel.setImage("assets/images/soul.png");
  requireModel.setSelected(false);
  pairs.add(requireModel);
  pairs.add(requireModel);

  requireModel = RequireModel(img: "", isSelected: true);
  requireModel.setImage("assets/images/soul.png");
  requireModel.setSelected(false);
  pairs.add(requireModel);
  pairs.add(requireModel);

  requireModel = RequireModel(img: "", isSelected: true);
  requireModel.setImage("assets/images/soul.png");
  requireModel.setSelected(false);
  pairs.add(requireModel);
  pairs.add(requireModel);

  requireModel = RequireModel(img: "", isSelected: true);
  requireModel.setImage("assets/images/soul.png");
  requireModel.setSelected(false);
  pairs.add(requireModel);
  pairs.add(requireModel);

  requireModel = RequireModel(img: "", isSelected: true);
  requireModel.setImage("assets/images/soul.png");
  requireModel.setSelected(false);
  pairs.add(requireModel);
  pairs.add(requireModel);

  requireModel = RequireModel(img: "", isSelected: true);
  requireModel.setImage("assets/images/soul.png");
  requireModel.setSelected(false);
  pairs.add(requireModel);
  pairs.add(requireModel);

  requireModel = RequireModel(img: "", isSelected: true);
  requireModel.setImage("assets/images/soul.png");
  requireModel.setSelected(false);
  pairs.add(requireModel);
  pairs.add(requireModel);

  return pairs;
}
