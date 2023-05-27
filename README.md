# CryptoPriceTracker Documentation

## Introduction
Welcome to the documentation for the CryptoPriceTracker GitHub repository. CryptoPriceTracker is an open-source cryptocurrency price tracking application developed using the Flutter framework. It utilizes various technologies such as BLoC state management, reusable UI components, the repository pattern. This documentation aims to provide an overview of the project structure, setup instructions, and key functionalities of the application.

## Repository Overview
The CryptoPriceTracker repository contains the source code and related files for the application. Here is an overview of the repository structure:

- `lib/`: This directory contains the main source code of the CryptoPriceTracker application.
  - `cubit/`: Contains the cubit functionalities from flutter_bloc used in the application.
  - `models/`: Contains the class model that is being parsed from the json data.
  - `services/`: Contains the connection functionalities from coingecko server.
  - `main.dart`: The entry point of the application.

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

Feel free to explore the codebase and make modifications or enhancements as per your requirements.

## Resources
- Flutter Documentation: [https://flutter.dev/docs](https://flutter.dev/docs)
- Flutter Package Repository: [https://pub.dev](https://pub.dev)
- Flutter Community: [https://fluttercommunity.dev](https://fluttercommunity.dev)

## License
CryptoPriceTracker is released under the [MIT License](https://opensource.org/licenses/MIT). Please refer to the LICENSE file for more details.

## Contact
For any queries or feedback, you can reach out to the project owner, Amritesh Khare, via the [GitHub repository](https://github.com/AmriteshKhare/cryptopricetracker) or the email provided in the repository.