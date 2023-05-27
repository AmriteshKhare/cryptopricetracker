# CryptoPriceTracker Documentation

## Introduction
Welcome to the documentation for the CryptoPriceTracker GitHub repository. CryptoPriceTracker is an open-source cryptocurrency price tracking application developed using the Flutter framework. It utilizes various technologies such as BLoC state management, reusable UI components, the repository pattern, and optionally, an offline-first architecture. This documentation aims to provide an overview of the project structure, setup instructions, and key functionalities of the application.

## Repository Overview
The CryptoPriceTracker repository contains the source code and related files for the application. Here is an overview of the repository structure:

- `lib/`: This directory contains the main source code of the CryptoPriceTracker application.
  - `models/`: Contains the data models used in the application.
  - `blocs/`: Contains the BLoC (Business Logic Component) implementations for managing application state.
  - `repositories/`: Contains the repository implementations responsible for data retrieval and caching.
  - `ui/`: Contains the user interface components and screens of the application.
  - `utils/`: Contains utility functions and helper classes used throughout the application.
  - `main.dart`: The entry point of the application.

- `assets/`: Contains static assets such as images and fonts used in the application.

- `pubspec.yaml`: The configuration file for managing dependencies and assets used in the application.

## Setup Instructions
To set up CryptoPriceTracker on your local machine, follow these steps:

1. Ensure that you have Flutter installed on your system. If not, refer to the official Flutter documentation for installation instructions: [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)

2. Clone the repository using the following command:
   ```
   git clone https://github.com/AmriteshKhare/cryptopricetracker.git
   ```

3. Navigate to the project directory:
   ```
   cd cryptopricetracker
   ```

4. Fetch the project dependencies by running:
   ```
   flutter pub get
   ```

5. Connect your Android or iOS device or start an emulator/simulator.

6. Run the application using the following command:
   ```
   flutter run
   ```

The CryptoPriceTracker application should now be up and running on your device or emulator/simulator.

## Key Functionalities
CryptoPriceTracker provides the following key functionalities:

- **Live Price Tracking**: Real-time price updates for various cryptocurrencies.
- **Detailed Cryptocurrency Information**: Comprehensive details on each listed cryptocurrency, including market cap, trading volume, and percentage change.
- **Personalized Watchlist**: Ability to create and manage a personalized watchlist of favorite cryptocurrencies.
- **Search Functionality**: Quick search feature to find specific cryptocurrencies by name or ticker symbol.
- **Offline-First Architecture (Optional)**: Ability to access previously fetched cryptocurrency data even when offline.

Feel free to explore the codebase and make modifications or enhancements as per your requirements. Contributions to the project are also welcome.

## Resources
- Flutter Documentation: [https://flutter.dev/docs](https://flutter.dev/docs)
- Flutter Package Repository: [https://pub.dev](https://pub.dev)
- Flutter Community: [https://fluttercommunity.dev](https://fluttercommunity.dev)

## License
CryptoPriceTracker is released under the [MIT License](https://opensource.org/licenses/MIT). Please refer to the LICENSE file for more details.

## Contact
For any queries or feedback, you can reach out to the project owner, Amritesh Khare, via the [GitHub repository](https://github.com/AmriteshKhare/cryptopricetracker) or the email provided in the repository.