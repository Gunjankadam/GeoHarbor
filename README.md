# 🌐 GeoHarbor

**GeoHarbor** is a Flutter-based mobile application designed to manage and visualize GIS (Geographic Information System) data. It provides features such as GIS file uploads, spatial layer analysis, feedback submission, authentication, and user account settings — all within a sleek, responsive interface.

---

## 📱 Features

- 🔐 User Authentication (Login, Register, Forgot Password)
- 📄 Upload GIS layers (GeoJSON, KML, etc.)
- 🧠 Perform analysis and operations on spatial data
- ⚙️ Profile management and secure logout
- ✉️ In-app feedback submission with email integration
- 🌈 Modern UI with animations and gradient styles
- 🧽 Bottom navigation for seamless navigation

---

## 📁 Project Structure

```bash
lib/
├── model/                 # Data models (GeoJSON, API responses)
│   ├── fromjson.dart
│   ├── geojson_model.dart
│   └── upload_response.dart
│
├── service/               # API service integration
│   └── api_service.dart
│
├── utils/                 # UI helpers and utilities
│   ├── bottomnavbar.dart
│   ├── fancy_loader.dart
│   └── layer_operation.dart
│
├── view/                  # Screens / Pages
│   ├── analysis_page.dart
│   ├── fancy_home_page.dart
│   ├── feedback_page.dart
│   ├── forgot_pass_page.dart
│   ├── home_page.dart
│   ├── login_page.dart
│   ├── register_page.dart
│   ├── settings_page.dart
│   ├── upload_selection.dart
│   └── main.dart          # App entry point
```

---

## 🚀 Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (Latest stable)
- Android Studio or VS Code
- Dart >= 3.x.x

### Installation

1. **Clone the repo**

```bash
git clone https://github.com/your-username/GeoHarbor.git
cd GeoHarbor
```

2. **Install dependencies**

```bash
flutter pub get
```

3. **Run the app**

```bash
flutter run
```

---

## 🔪 Build APK

```bash
flutter build apk --release
```

APK path:\
`build/app/outputs/flutter-apk/app-release.apk`

---

## 📵 Download

You can download the latest APK directly or scan the QR code below:
<img src="https://github.com/copyninja277/Geoharbor-flutter/blob/master/scanner.jpeg?raw=true" alt="Home Page" width="280"/>

### 🔺 [Download Latest APK](https://drive.google.com/file/d/1r1NxAqzahL4m5XGZ9IjApX86ipe6XjMZ)

---

## 🌟 Screenshots

<table>
  <tr>
    <td align="center">
      🏠 <strong>Home Page</strong><br>
      <img src="https://github.com/copyninja277/Geoharbor-flutter/blob/master/homepage.jpg?raw=true" alt="Home Page" width="280"/>
    </td>
    <td align="center">
      🗻 <strong>Map Page</strong><br>
      <img src="https://github.com/copyninja277/Geoharbor-flutter/blob/master/mappage.jpg?raw=true" alt="Map Page" width="280"/>
    </td>
    <td align="center">
      🔍 <strong>Upload View</strong><br>
      <img src="https://github.com/copyninja277/Geoharbor-flutter/blob/master/uploadpage.jpg?raw=true" alt="Upload View" width="280"/>
    </td>
  </tr>
</table>

---

## 📬 Feedback and Support

Feedbacks submitted through the app are automatically emailed to the admin using SMTP integration via the `mailer` package.

---

## 📄 License

This project is licensed under the MIT License. See [`LICENSE`](LICENSE) for more info.

---

## 👨‍💼 Author

**Kasam Mapara**\
📧 [kasammapara13@gmail.com](mailto\:kasammapara13@gmail.com)\
🔗 [LinkedIn](https://www.linkedin.com/in/kasam-mapara-016637256/)

**Gunjan Kadam**\
📧 [kadamgunjan27@gmail.com](mailto\:kadamgunjan27@gmail.com)\
🔗 [Github](https://github.com/Gunjankadam)

---

> Made with ❤️ in Flutter for GIS enthusiasts.
