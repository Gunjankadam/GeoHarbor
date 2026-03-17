class UploadResponseModel {
  final bool success;
  final String message;
  final String? data;

  UploadResponseModel({
    required this.success,
    required this.message,
    this.data,
  });

  factory UploadResponseModel.fromJson(Map<String, dynamic> json) {
    return UploadResponseModel(
      success: json['success'] ?? false,
      message: json['message'] ?? '',
      data: json['data'],
    );
  }
}
