# PowerParkPlus App 🚗⚡

**PowerParkPlus** is a cutting-edge mobile application for car charging stations, designed to make it simple for users to locate, activate, and connect to chargers. With a sleek user interface and essential features, this app ensures a seamless charging experience for electric vehicle owners.

---

## 🌟 Features
- **Activate and Connect Charger**: Easily connect to a charging station with a single tap.
- **Live Charging Status**: Track your car's charging progress in real-time.
- **Nearby Charging Stations**: Find and navigate to the nearest available charging station.
- **Interactive QR Scanner**: Quickly scan QR codes to connect to a specific charger.
- **User-friendly Interface**: Modern, clean, and fully responsive design for all devices.
- **Sliding Image Gallery**: Automatic slider showcasing key features of the app with dots indicating the current image.
- **Custom Animations**: Beautiful animations, transitions, and 3D effects for tiles and buttons.

---

## 📱 Screenshots

<img src="assets/screenshots/home_screen.png" alt="Home Screen" width="300"/> 
<img src="assets/screenshots/qr_scanner.png" alt="QR Scanner" width="300"/>

---

## 🚀 Installation

### Prerequisites
Before setting up, make sure you have the following installed:
- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Android Studio](https://developer.android.com/studio) or [Visual Studio Code](https://code.visualstudio.com/)
- An Android/iOS emulator or a physical device for testing.

### Setup Instructions

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-username/powerparkplus_app.git

📂 Folder Structure
```
powerparkplus_app/
│
├── assets/                   # App resources like images and icons
│   ├── icons/                # App logo and other icons
│   ├── slider_images/        # Images for the slider in the home screen
│   └── screenshots/          # Screenshots for the README and documentation
│
├── lib/                      # Main application code
│   ├── screens/              # All the app screens (HomeScreen, QRScannerPage, etc.)
│   ├── widgets/              # Reusable UI components (slider, buttons, etc.)
│   └── main.dart             # App entry point
│
└── README.md                 # Documentation file
```

🌐 Technologies Used

Flutter: Front-end framework for building natively compiled applications for mobile.
Dart: Programming language used for Flutter.
State Management: Efficient state handling using setState and PageController.
Responsive UI: The app adapts to different screen sizes, ensuring a seamless experience on mobile devices.
Custom Animations: Smooth transitions, automatic image slider, and interactive widgets for better user experience.
Icons and Assets: Beautiful custom icons and images to enhance the UI.

🤝 Contributing

Fork the repository.
Create a new branch: git checkout -b feature-name.
Make your changes and commit them: git commit -m 'Added some feature'.
Push to the branch: git push origin feature-name.
Open a pull request for review.


### Key Highlights:
- Integrated **dots** to indicate the current image in the slider.
- Added **automatic sliding** of images every 5 seconds with infinite looping.
- Included **3D tile effects** and **green tile** for the "Scan Now" button.
- Visual structure emphasizing the **UI design** and **features** of the app.
