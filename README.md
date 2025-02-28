# Midterm Digital Signal Processing

## Giới thiệu

Đây là kho lưu trữ chứa mã MATLAB dùng để xử lý và phân tích dữ liệu âm thanh.

## Các tập tin

- `main.m`: Tập tin chính gọi các hàm xử lý âm thanh.
- `Phone_F1.m`: Xử lý tín hiệu âm thanh từ file `phone_F1.wav`.
- `Phone_M1.m`: Xử lý tín hiệu âm thanh từ file `phone_M1.wav`.
- `Studio_F1.m`: Xử lý tín hiệu âm thanh từ file `studio_F1.wav`.
- `Studio_M1.m`: Xử lý tín hiệu âm thanh từ file `studio_M1.wav`.

## Cách sử dụng

Để chạy chương trình, mở MATLAB và thực thi tập tin `main.m`:

```matlab
main
```

## Mô tả các hàm

- `Phone_F1.m`:
  - Đọc và xử lý dữ liệu từ tệp `phone_F1.wav`.
  - Tính toán năng lượng ngắn hạn (STE) và tốc độ đổi dấu (ZCR).
  - Chuẩn hóa dữ liệu và xác định điểm giao giữa STE và ZCR.
  - Vẽ biểu đồ hiển thị các thông số liên quan.

- `Phone_M1.m`:
  - Đọc và xử lý dữ liệu từ tệp `phone_M1.wav`.
  - Thực hiện các bước tương tự như `Phone_F1.m` với dữ liệu khác.

- `Studio_F1.m`:
  - Đọc và xử lý dữ liệu từ tệp `studio_F1.wav`.
  - Thực hiện các bước tính toán tương tự như các tệp trên.

- `Studio_M1.m`:
  - Đọc và xử lý dữ liệu từ tệp `studio_M1.wav`.
  - Thực hiện các bước tính toán tương tự như các tệp trên.

## Yêu cầu

- MATLAB phiên bản mới nhất hoặc tương thích với cú pháp hiện tại.
- Các tệp âm thanh (`phone_F1.wav`, `phone_M1.wav`, `studio_F1.wav`, `studio_M1.wav`) cần có trong cùng thư mục với mã nguồn.

## Liên hệ
Nếu có bất kỳ vấn đề nào khi chạy chương trình, vui lòng liên hệ qua email hoặc tạo issue trên repository này.

