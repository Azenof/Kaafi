class Certificate {
  final String certId;
  final String studentId;
  final String courseId;
  final DateTime issueDate;
  final String criteria;

  Certificate({
    required this.certId,
    required this.studentId,
    required this.courseId,
    required this.issueDate,
    required this.criteria,
  });

  // Factory constructor for creating Certificate from JSON/map
  factory Certificate.fromJson(Map<String, dynamic> json) {
    return Certificate(
      certId: json['certId'] as String,
      studentId: json['studentId'] as String,
      courseId: json['courseId'] as String,
      issueDate: DateTime.parse(json['issueDate'] as String),
      criteria: json['criteria'] as String,
    );
  }

  // Convert Certificate to JSON/map
  Map<String, dynamic> toJson() {
    return {
      'certId': certId,
      'studentId': studentId,
      'courseId': courseId,
      'issueDate': issueDate.toIso8601String(),
      'criteria': criteria,
    };
  }

  // Copy with method for immutability
  Certificate copyWith({
    String? certId,
    String? studentId,
    String? courseId,
    DateTime? issueDate,
    String? criteria,
  }) {
    return Certificate(
      certId: certId ?? this.certId,
      studentId: studentId ?? this.studentId,
      courseId: courseId ?? this.courseId,
      issueDate: issueDate ?? this.issueDate,
      criteria: criteria ?? this.criteria,
    );
  }

  @override
  String toString() {
    return 'Certificate(certId: $certId, studentId: $studentId, courseId: $courseId, issueDate: $issueDate, criteria: $criteria)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Certificate && other.certId == certId;
  }

  @override
  int get hashCode {
    return certId.hashCode;
  }
}

// Helper class for working with lists of certificates
class CertificateList {
  final List<Certificate> certificates;

  CertificateList(this.certificates);

  factory CertificateList.fromJson(List<dynamic> jsonList) {
    return CertificateList(
      jsonList.map((json) => Certificate.fromJson(json)).toList(),
    );
  }

  List<Map<String, dynamic>> toJson() {
    return certificates.map((cert) => cert.toJson()).toList();
  }

  // Find certificate by ID
  Certificate? findById(String certId) {
    try {
      return certificates.firstWhere((cert) => cert.certId == certId);
    } catch (e) {
      return null;
    }
  }

  // Find certificates by student ID
  List<Certificate> findByStudentId(String studentId) {
    return certificates
        .where((cert) => cert.studentId == studentId)
        .toList();
  }

  // Find certificates by course ID
  List<Certificate> findByCourseId(String courseId) {
    return certificates
        .where((cert) => cert.courseId == courseId)
        .toList();
  }

  // Filter certificates by date range
  List<Certificate> filterByDateRange(DateTime start, DateTime end) {
    return certificates
        .where((cert) =>
    cert.issueDate.isAfter(start) &&
        cert.issueDate.isBefore(end))
        .toList();
  }

  // Get certificates issued this month
  List<Certificate> getThisMonthCertificates() {
    final now = DateTime.now();
    final firstDayOfMonth = DateTime(now.year, now.month, 1);
    final lastDayOfMonth = DateTime(now.year, now.month + 1, 0);
    return filterByDateRange(firstDayOfMonth, lastDayOfMonth);
  }

  @override
  String toString() {
    return 'CertificateList(${certificates.length} certificates)';
  }
}

