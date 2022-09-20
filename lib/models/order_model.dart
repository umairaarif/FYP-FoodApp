class OrderModel {
  String order_id;
  String food_id;
  String price;
  String food_details;

  OrderModel({
    required this.order_id,
    required this.food_id,
    required this.price,
    required this.food_details,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['f_name'] = this.order_id;
    data['phone'] = this.food_id;
    data['email'] = this.price;
    data['password'] = this.food_details;
    return data;
  }
}