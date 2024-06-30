class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({required this.id,required this.question, required this.answer
    , required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "Ai chịu trách nhiệm chính về việc thiết kế và phân tích hệ thống thông tin?",
    "options": ['Nhà phân tích hệ thống', 'Kỹ sư phần mềm', 'Nhân viên', 'Nhà phát triển ứng dụng'],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question": "Phương pháp nào dưới đây là phương pháp luận truyền thống được sử dụng để phát triển, duy trì và thay thế hệ thống thông tin?",
    "options": ['Tạo mẫu', 'OOAD', 'RAD', 'SDLC'],
    "answer_index": 3,
  },
  {
    "id": 3,
    "question": "________ là quá trình xác định các hoạt động rõ ràng cần thiết để hoàn thành các hoạt động trong một dự án.",
    "options": ['Lập kế hoạch dự án', 'Khởi đầu dự án', 'Baseline', 'Trường hợp kinh doanh'],
    "answer_index": 0,
  },
  {
    "id": 4,
    "question": "Điều nào sau đây KHÔNG phải là một phần của quá trình bắt đầu dự án?",
    "options": ['Tạo nhóm bắt đầu dự án', 'Thiết lập các thủ tục quản lý', 'Tạo ngân sách dự án', 'Xây dựng điều lệ dự án'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "Trong phân tích hệ thống, thành phần nào sau đây KHÔNG phải là thành phần bạn cần hiểu?",
    "options": ['Mục tiêu kinh doanh', 'Thông tin mọi người cần để thực hiện công việc của họ', 'Các quy tắc quản lý dữ liệu', 'Quy mô của ngân sách'],
    "answer_index": 3,
  },
  {
    "id": 6,
    "question": "Cốt lõi của phân tích hệ thống là gì?",
    "options": ['Dự án', 'Nhà phân tích hệ thống', 'Thủ tục', 'Thu thập thông tin'],
    "answer_index": 3,
  },
  {
    "id": 7,
    "question": "________ là tài liệu được viết để mô tả cách thực hiện một công việc cụ thể",
    "options": ['Tài liệu hệ thống', 'Quy trình làm việc', 'Tuyên bố sứ mệnh', 'Tài liệu về mục tiêu'],
    "answer_index": 1,
  },
  {
    "id": 8,
    "question": "________ là quá trình theo đó các đặc điểm thiết kế vật lý do nhóm phân tích tạo ra được nhóm lập trình chuyển thành mã máy tính hoạt động.",
    "options": ['Thử nghiệm', 'Mã hóa', 'Đào tạo', 'Cài đặt'],
    "answer_index": 1,
  },
  {
    "id": 9,
    "question": "________ liên quan đến việc xác định những gì cần được kiểm tra và thu thập dữ liệu kiểm tra.",
    "options": ['Lập kế hoạch', 'Phân tích', 'Thiết kế', 'Thử nghiệm'],
    "answer_index": 0,
  },
  {
    "id": 10,
    "question": "Trong giai đoạn đầu của ________, các kế hoạch đào tạo được hoàn thiện và bắt đầu đào tạo về cách sử dụng hệ thống.",
    "options": ['Triển khai', 'Phân tích', 'Lập kế hoạch', 'Thiết kế'],
    "answer_index": 0,
  },
];
