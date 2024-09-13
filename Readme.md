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

    Navigate to the Project Directory:

    bash

cd powerparkplus_app

Install Dependencies: Run the following command to install required Flutter packages:

bash

flutter pub get

Run the App: Start the app on your connected device or emulator:

bash

    flutter run

🛠️ Usage

Once installed, the home screen provides the following options:

    Connect Charger: Tap to scan the charger’s QR code and start the charging process.
    Charging Status: Monitor the charging status of your car in real-time.
    Find Stations: Discover nearby charging stations and get directions.
    Sliding Gallery: Explore images of charging station features through an automatic slider. The slider updates every 5 seconds, with a dot indicator showing the current image.

🎨 Design Features

    Hello, RexZeal: The greeting text at the top of the home screen with an app logo integrated into the greeting.
    Welcome to PowerParkPlus: The introduction to the app placed directly below the greeting.
    Automatic Sliding Images: A gallery of four rotating images that update every 5 seconds in an infinite loop.
        Dot Indicators: Dots below the slider indicate the current image, with the active dot highlighted.
    Scan Now Tile: A full-width button below the slider with rounded edges, green color (green700), and a small PNG icon at the corner.
    3D Tile Design: Rounded edges and subtle shadow effects create a 3D-like appearance for the tiles, adding depth to the UI.
    Responsive Design: Optimized for both mobile and larger screens.

📂 Folder Structure

bash

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

🌐 Technologies Used

    Flutter: Front-end framework for building natively compiled applications for mobile.
    Dart: Programming language used for Flutter.
    State Management: Efficient state handling using setState and PageController.
    Responsive UI: The app adapts to different screen sizes, ensuring a seamless experience on mobile devices.
    Custom Animations: Smooth transitions, automatic image slider, and interactive widgets for better user experience.
    Icons and Assets: Beautiful custom icons and images to enhance the UI.

🤝 Contributing

Contributions are always welcome! Here's how you can contribute:

    Fork the repository.
    Create a new branch: git checkout -b feature-name.
    Make your changes and commit them: git commit -m 'Added some feature'.
    Push to the branch: git push origin feature-name.
    Open a pull request for review.

📄 License

This project is licensed under the MIT License. Feel free to use and modify the code.
🙌 Acknowledgements

    Flutter for providing an excellent framework to build cross-platform apps.
    Special thanks to all contributors and testers for their invaluable support.

PowerParkPlus App - Bringing a smarter charging experience to every electric vehicle owner!

markdown


### Key Highlights:
- Integrated **dots** to indicate the current image in the slider.
- Added **automatic sliding** of images every 5 seconds with infinite looping.
- Included **3D tile effects** and **green tile** for the "Scan Now" button.
- Visual structure emphasizing the **UI design** and **features** of the app.
