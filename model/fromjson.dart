// fromjson.dart

// For future use — if the backend returns structured JSON responses.
class UploadResponse {
  final bool success;
  final String message;
  final String? data;

  UploadResponse({
    required this.success,
    required this.message,
    this.data,
  });

  factory UploadResponse.fromJson(Map<String, dynamic> json) {
    return UploadResponse(
      success: json['success'] ?? false,
      message: json['message'] ?? 'No message',
      data: json['data'],
    );
  }
}
