import 'package:sqflite/sqflite.dart';
import 'package:quiz_make/database/database_helper.dart';

Future<void> insertData() async {
  final db = await DatabaseHelper().initializeDatabase();

  // Chèn dữ liệu vào bảng LOAI_CAU_HOI
  await db.insert('LOAI_CAU_HOI', {'Ma_loai': 1, 'Ten': 'Trắc nghiệm'
  });
  await db.insert('LOAI_CAU_HOI', {'Ma_loai': 2, 'Ten': 'Thẻ ghi nhớ'
  });

  // Chèn dữ liệu vào bảng CHU_DE của LOAI_CAU_HOI 1
  await db.insert('CHU_DE', {'Ma_chu_de': 1, 'Ma_loai': 1, 'Ten': 'CS 303'
  });
  await db.insert('CHU_DE', {'Ma_chu_de': 2, 'Ma_loai': 1, 'Ten': 'POS 351'
  });
  await db.insert('CHU_DE', { 'Ma_chu_de': 3, 'Ma_loai': 1, 'Ten': 'POS 361'
  });

  // Chèn dữ liệu vào bảng CAU_HOI của CHU_DE 1
  await db.insert('CAU_HOI', { 'Ma_cau': 1, 'Ma_chu_de': 1, 'ND': 'Ai chịu trách nhiệm chính về việc thiết kế và phân tích hệ thống thông tin?'
  });
  await db.insert('CAU_HOI', {'Ma_cau': 2, 'Ma_chu_de': 1, 'ND': 'Phương pháp nào dưới đây là phương pháp luận truyền thống được sử dụng để phát triển, duy trì và thay thế hệ thống thông tin?'
  });
  await db.insert('CAU_HOI', { 'Ma_cau': 3,'Ma_chu_de': 1, 'ND': '________ là quá trình xác định các hoạt động rõ ràng cần thiết để hoàn thành các hoạt động trong một dự án.'
  });
  await db.insert('CAU_HOI', { 'Ma_cau': 4,'Ma_chu_de': 1, 'ND': 'Điều nào sau đây KHÔNG phải là một phần của quá trình bắt đầu dự án?'
  });
  await db.insert('CAU_HOI', { 'Ma_cau': 5,'Ma_chu_de': 1, 'ND': 'Trong phân tích hệ thống, thành phần nào sau đây KHÔNG phải là thành phần bạn cần hiểu?'
  });
  await db.insert('CAU_HOI', { 'Ma_cau': 6,'Ma_chu_de': 1, 'ND': 'Cốt lõi của phân tích hệ thống là gì?'
  });
  await db.insert('CAU_HOI', { 'Ma_cau': 7,'Ma_chu_de': 1, 'ND': '________ là tài liệu được viết để mô tả cách thực hiện một công việc cụ thể.'
  });
  await db.insert('CAU_HOI', { 'Ma_cau': 8,'Ma_chu_de': 1, 'ND': '________ là quá trình theo đó các đặc điểm thiết kế vật lý do nhóm phân tích tạo ra được nhóm lập trình chuyển thành mã máy tính hoạt động.'
  });
  await db.insert('CAU_HOI', { 'Ma_cau': 9,'Ma_chu_de': 1, 'ND': '________ liên quan đến việc xác định những gì cần được kiểm tra và thu thập dữ liệu kiểm tra.'
  });
  await db.insert('CAU_HOI', { 'Ma_cau': 10,'Ma_chu_de': 1, 'ND': 'Trong giai đoạn đầu của ________, các kế hoạch đào tạo được hoàn thiện và bắt đầu đào tạo về cách sử dụng hệ thống.'
  });

  // Chèn dữ liệu vào bảng DAP_AN
  // CAU_HOI 1
  await db.insert('DAP_AN', {    'Ma_cau': 1,    'Ma_da': 11,    'ND': 'Nhà phân tích hệ thống',    'KQ': 'TRUE'
  });
  await db.insert('DAP_AN', {    'Ma_cau': 1,    'Ma_da': 12,    'ND': 'Kỹ sư phần mềm',    'KQ': 'FALSE'
  });
  await db.insert('DAP_AN', {    'Ma_cau': 1,    'Ma_da': 13,    'ND': 'Nhân viên',    'KQ': 'FALSE'
  });
  await db.insert('DAP_AN', {    'Ma_cau': 1,    'Ma_da': 14,    'ND': 'Nhà phát triển ứng dụng',    'KQ': 'FALSE'
  });
  // CAU_HOI 2
  await db.insert('DAP_AN', {    'Ma_cau': 2,    'Ma_da': 21,    'ND': 'Tạo mẫu',    'KQ': 'FALSE'
  });
  await db.insert('DAP_AN', {    'Ma_cau': 2,    'Ma_da': 22,    'ND': 'OOAD',    'KQ': 'FALSE'
  });
  await db.insert('DAP_AN', {    'Ma_cau': 2,    'Ma_da': 23,    'ND': 'RAD',    'KQ': 'FALSE'
  });
  await db.insert('DAP_AN', {    'Ma_cau': 2,    'Ma_da': 24,    'ND': 'SDLC',    'KQ': 'TRUE'
  });
  // CAU_HOI 3
  await db.insert('DAP_AN', {    'Ma_cau': 3,    'Ma_da': 31,    'ND': 'Lập kế hoạch dự án',    'KQ': 'TRUE'
  });
  await db.insert('DAP_AN', {    'Ma_cau': 3,    'Ma_da': 32,    'ND': 'Khởi đầu dự án',    'KQ': 'FALSE'
  });
  await db.insert('DAP_AN', {    'Ma_cau': 3,    'Ma_da': 33,    'ND': 'Baseline',    'KQ': 'FALSE'
  });
  await db.insert('DAP_AN', {    'Ma_cau': 3,    'Ma_da': 34,    'ND': 'Trường hợp kinh doanh',    'KQ': 'FALSE'
  });
  // CAU_HOI 4
  await db.insert('DAP_AN', {    'Ma_cau': 4,    'Ma_da': 41,    'ND': 'Tạo nhóm bắt đầu dự án',    'KQ': 'FALSE'
  });
  await db.insert('DAP_AN', {    'Ma_cau': 4,    'Ma_da': 42,    'ND': 'Thiết lập các thủ tục quản lý',    'KQ': 'FALSE'
  });
  await db.insert('DAP_AN', {    'Ma_cau': 4,    'Ma_da': 43,    'ND': 'Tạo ngân sách dự án',    'KQ': 'TRUE'
  });
  await db.insert('DAP_AN', {    'Ma_cau': 4,    'Ma_da': 44,    'ND': 'Xây dựng điều lệ dự án',    'KQ': 'FALSE'
  });
  // CAU_HOI 5
  await db.insert('DAP_AN', {    'Ma_cau': 5,    'Ma_da': 51,    'ND': 'Mục tiêu kinh doanh',    'KQ': 'FALSE'
  });
  await db.insert('DAP_AN', {    'Ma_cau': 5,    'Ma_da': 52,    'ND': 'Thông tin mọi người cần để thực hiện công việc của họ',    'KQ': 'FALSE'
  });
  await db.insert('DAP_AN', {    'Ma_cau': 5,    'Ma_da': 53,    'ND': 'Các quy tắc quản lý dữ liệu',    'KQ': 'FALSE'
  });
  await db.insert('DAP_AN', {    'Ma_cau': 5,    'Ma_da': 54,    'ND': 'Quy mô của ngân sách',    'KQ': 'TRUE'
  });
  // CAU_HOI 6
  await db.insert('DAP_AN', {    'Ma_cau': 6,    'Ma_da': 61,    'ND': 'Dự án',    'KQ': 'FALSE'
  });
  await db.insert('DAP_AN', {    'Ma_cau': 6,    'Ma_da': 62,    'ND': 'Nhà phân tích hệ thống',    'KQ': 'FALSE'
  });
  await db.insert('DAP_AN', {    'Ma_cau': 6,    'Ma_da': 63,    'ND': 'Thủ tục',    'KQ': 'FALSE'
  });
  await db.insert('DAP_AN', {    'Ma_cau': 6,    'Ma_da': 64,    'ND': 'Thu thập thông tin',    'KQ': 'TRUE'
  });
  // CAU_HOI 7
  await db.insert('DAP_AN', {    'Ma_cau': 7,    'Ma_da': 71,    'ND': 'Tài liệu hệ thống',    'KQ': 'FALSE'
  });
  await db.insert('DAP_AN', {    'Ma_cau': 7,    'Ma_da': 72,    'ND': 'Quy trình làm việc',    'KQ': 'TRUE'
  });
  await db.insert('DAP_AN', {    'Ma_cau': 7,    'Ma_da': 73,    'ND': 'Tuyên bố sứ mệnh',    'KQ': 'FALSE'
  });
  await db.insert('DAP_AN', {    'Ma_cau': 7,    'Ma_da': 74,    'ND': 'Tài liệu về mục tiêu',    'KQ': 'FALSE'
  });
  // CAU_HOI 8
  await db.insert('DAP_AN', {    'Ma_cau': 8,    'Ma_da': 81,    'ND': 'Thử nghiệm',    'KQ': 'FALSE'
  });
  await db.insert('DAP_AN', {    'Ma_cau': 8,    'Ma_da': 82,    'ND': 'Mã hóa',    'KQ': 'TRUE'
  });
  await db.insert('DAP_AN', {    'Ma_cau': 8,    'Ma_da': 83,    'ND': 'Đào tạo',    'KQ': 'FALSE'
  });
  await db.insert('DAP_AN', {    'Ma_cau': 8,    'Ma_da': 84,    'ND': 'Cài đặt',    'KQ': 'FALSE'
  });
  // CAU_HOI 9
  await db.insert('DAP_AN', {    'Ma_cau': 9,    'Ma_da': 91,    'ND': 'Lập kế hoạch',    'KQ': 'TRUE'
  });
  await db.insert('DAP_AN', {    'Ma_cau': 9,    'Ma_da': 92,    'ND': 'Phân tích',    'KQ': 'FALSE'
  });
  await db.insert('DAP_AN', {    'Ma_cau': 9,    'Ma_da': 93,    'ND': 'Thiết kế',    'KQ': 'FALSE'
  });
  await db.insert('DAP_AN', {    'Ma_cau': 9,    'Ma_da': 94,    'ND': 'Thử nghiệm',    'KQ': 'FALSE'
  });
  // CAU_HOI 10
  await db.insert('DAP_AN', {    'Ma_cau': 10,    'Ma_da': 101,    'ND': 'Triển khai',    'KQ': 'TRUE'
  });
  await db.insert('DAP_AN', {    'Ma_cau': 10,    'Ma_da': 102,    'ND': 'Phân tích',    'KQ': 'FALSE'
  });
  await db.insert('DAP_AN', {    'Ma_cau': 10,    'Ma_da': 103,    'ND': 'Lập kế hoạch',    'KQ': 'FALSE'
  });
  await db.insert('DAP_AN', {    'Ma_cau': 10,    'Ma_da': 104,    'ND': 'Thiết kế',    'KQ': 'FALSE'
  });
  print('Dữ liệu đã được chèn thành công!');
}

