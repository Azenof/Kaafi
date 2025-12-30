class CategoryDataClass {
  final String categoryId;
  final String name;
  final String? parentCategoryId;

  const CategoryDataClass({
    required this.categoryId,
    required this.name,
    this.parentCategoryId,
  });

  factory CategoryDataClass.fromJson(Map<String, dynamic> json) => CategoryDataClass(
    categoryId: json['categoryId'] as String,
    name: json['name'] as String,
    parentCategoryId: json['parentCategoryId'] as String?,
  );
}