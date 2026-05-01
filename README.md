<div align="center">
  <h1>⚔️ LoL Auto Matchmaking ⚔️</h1>
  <p><i>Một công cụ hỗ trợ tự động chấp nhận trận đấu cho Liên Minh Huyền Thoại với giao diện chuẩn Hextech.</i></p>
  
  <p>
    <a href="https://skillicons.dev">
      <img src="https://skillicons.dev/icons?i=python,qt&theme=dark" alt="Skill Icons" />
    </a>
  </p>
</div>

## 🌟 Giới thiệu

**LoL Auto Matchmaking** là một tiện ích nhỏ gọn giúp bạn tự động "Chấp Nhận" (Accept) khi tìm thấy trận đấu trong Liên Minh Huyền Thoại. Ứng dụng quét ngầm và tương tác trực tiếp với League Client API (LCU) một cách an toàn và nhẹ nhàng. Đặc biệt, giao diện (UI) của ứng dụng được thiết kế tỉ mỉ theo phong cách Hextech cực kỳ bắt mắt.

## ✨ Tính năng nổi bật

- **Tự động chấp nhận trận:** Hỗ trợ hầu hết mọi hàng chờ (Ranked, Normal, ARAM, URF, v.v.).
- **Giao diện Hextech:** Thiết kế tối màu, viền vàng (Gold frame), sử dụng font chữ mang phong cách cổ điển của game.
- **Single-instance Protection:** Đảm bảo chỉ có một bản thể của ứng dụng chạy cùng lúc.
- **Khởi động cùng Windows:** Lựa chọn để ứng dụng tự chạy ngầm khi bật máy tính.
- **Thu nhỏ xuống khay hệ thống:** (System Tray) Tránh gây vướng víu trên màn hình làm việc.
- **Theo dõi nhật ký (Log):** Cập nhật trạng thái kết nối, trạng thái hàng chờ ngay trên màn hình chính (Real-time).

## 🚀 Cài đặt & Sử dụng

### 1. Dành cho người dùng (Sử dụng trực tiếp)

Bạn không cần phải cài đặt Python hay bất kì môi trường lập trình nào.

1. Tải ứng dụng và chạy trực tiếp file `.exe` (Thường nằm trong thư mục `dist/` hoặc tải qua trang Releases).
2. Nhấn nút **▶ BẮT ĐẦU** trên giao diện ứng dụng.
3. Mở Liên Minh Huyền Thoại và tìm trận, phần còn lại hãy để công cụ lo!

### 2. Dành cho nhà phát triển (Chạy từ mã nguồn)

Nếu bạn muốn đóng góp hoặc tùy chỉnh mã nguồn:

**Yêu cầu hệ thống:**
- Python 3.8+

**Các bước thực hiện:**
1. Clone hoặc tải mã nguồn dự án về máy tính.
2. Cài đặt các thư viện phụ thuộc bằng lệnh:
   ```bash
   pip install psutil requests PyQt6
   ```
3. Khởi chạy trực tiếp:
   ```bash
   python auto_accept_lol.py
   ```

## 🛠 Đóng gói thành file .EXE

Nếu bạn đã thay đổi mã nguồn và muốn tự build lại thành file chạy `.exe` độc lập, dự án cung cấp sẵn file script tự động hóa:

1. Nhấp đúp chuột để chạy file `BUILD_EXE.bat`.
2. Hệ thống sẽ tự động kiểm tra Python, cài đặt các thư viện cần thiết như `PyInstaller`.
3. Sau khi hoàn tất tiến trình, kết quả file `.exe` sẽ được lưu trong thư mục `dist/`.

## ⚙️ Cơ chế hoạt động của hệ thống

Ứng dụng kết nối thông qua giao thức LCU (League Client Update) thay vì mô phỏng thao tác giả lập click chuột (Auto-clicker):
- **Đọc cấu hình Client:** Ứng dụng tự động dò tìm process của League Client và trích xuất dữ liệu từ `lockfile` để lấy Port và Authentication Token cục bộ.
- **Tương tác HTTP API:** Gửi các yêu cầu thông qua API nội bộ của Riot để lấy thông tin hàng chờ và gửi lệnh *Ready Check Accept* cực kỳ nhanh chóng.

---
<div align="center">
  <sub>Được phát triển nhằm nâng cao trải nghiệm chuẩn bị trước mỗi trận đấu! GLHF.</sub>
</div>
