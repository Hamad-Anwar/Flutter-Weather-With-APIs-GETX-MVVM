# Flutter Weather Application

## Introduction

This Flutter weather application is designed to provide users with accurate weather information in an intuitive and user-friendly way. It fetches data from a weather API to display the current weather details, a complete 24-hour forecast, and a 14-day weather forecast. The app is built using the MVVM architecture and managed with the GetX state management library, ensuring a clean and maintainable codebase.

## Screenshots

<img src="demo.png">


## Features

- Display current weather conditions including temperature, humidity, wind speed, and more.
- Show a comprehensive 24-hour forecast with temperature and weather conditions for each hour.
- Provide a 14-day weather forecast with daily high and low temperatures, weather descriptions, and icons.
- User-friendly interface with intuitive design and smooth navigation.
- Automatic location detection or manual location input for accurate weather information.
- Error handling for API requests and network connectivity issues.

## Architecture

The app is built using the Model-View-ViewModel (MVVM) architecture. This design pattern separates the concerns of data, UI, and business logic, leading to a more modular and testable codebase. The app's architecture is further enhanced by GetX, a state management library that simplifies reactive programming and state transitions.

## Getting Started

Follow these steps to get the app up and running:

1. Clone the repository: `git clone https://github.com/Hamad-Anwar/Flutter-Weather-With-APIs-GETX-MVVM.git`
2. Navigate to the project directory: `cd weather`
3. Install dependencies: `flutter pub get`
4. Run the app: `flutter run`

## API Integration

The app integrates with a weather API to fetch weather data. The API key should be placed in the `lib/data/network/api_services.dart` file. You can obtain an API key by signing up on the weather service's website.

## State Management

State management is handled using the GetX library. The architecture separates the app into models, views, and view models, providing a reactive and efficient way to manage application state and update the UI.

## Dependencies

- [GetX](https://pub.dev/packages/get) - State management and dependency injection.
- [http](https://pub.dev/packages/http) - For making HTTP requests to the weather API.
- [intl](https://pub.dev/packages/intl) - Internationalization and formatting of dates.

For a complete list of dependencies, check the `pubspec.yaml` file.

## Contributing

Contributions are welcome! If you find any issues or want to add new features, feel free to fork the repository and submit a pull request. Please follow the existing code style and structure.

