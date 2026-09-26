# 🏖️ VacationsApp

A Flutter mobile application for an **Employees' Vacations Management System**, developed as part of a Flutter internship project.

The application combines a structured **MVVM-style architecture**, REST API integration, local session storage, and reusable Flutter UI components.

> **My contribution:** This repository was developed as part of an internship project. My work focused on implementing assigned Flutter features, integrating API endpoints, handling API responses, and separating networking concerns into reusable services.

## ✨ Features

### Authentication & Session
- 🔐 Employee login using a REST API
- 🔑 JWT token handling
- 💾 Local persistence of authentication data using SharedPreferences
- ⚠️ Basic login validation and error handling

### Employee Vacation Management
- 🏠 Employee dashboard
- 🗂️ Vacation types retrieved from the backend
- 📋 Vacation history and request views
- 🔎 Vacation filtering UI
- 📝 Request-a-vacation screen
- 📎 File attachment selection using File Picker
- 🔔 Notifications screen and unread notification count
- 👤 Employee profile screen

### UI & UX
- 🎨 Custom application design and reusable widgets
- 📱 Responsive Flutter layouts
- 🎠 Carousel-based feature sections
- 📊 Dashboard and vacation cards
- ✨ Custom navigation and splash screen
- 🌐 Arabic-compatible custom font support

## 🛠️ Tech Stack

| Technology | Usage |
|---|---|
| **Flutter / Dart** | Mobile application development |
| **Provider** | State management |
| **MVVM-style architecture** | Separation of UI and presentation logic |
| **HTTP** | REST API communication |
| **SharedPreferences** | Local session/token persistence |
| **File Picker** | Selecting vacation attachments |
| **Carousel Slider** | Dashboard feature carousel |
| **Smooth Page Indicator** | Carousel/page indicators |
| **Percent Indicator** | Progress-style UI components |
| **Badges** | Notification/count indicators |

## 🏗️ Architecture

The project uses an **MVVM-style structure** built around Provider and ChangeNotifier.

```
UI / Screens
     │
     ▼
ViewModel
     │
     ▼
Service
     │
     ▼
NetworkHelper
     │
     ▼
REST API
```

The main layers include:

```
lib/
├── base/
│   ├── base_services/
│   ├── base_view/
│   └── base_view_models/
│
├── models/
├── services/
├── view_models/
├── shared_preference/
└── views/
    ├── components/
    ├── screens/
    └── widgets/
```

### Base Layer

The project contains reusable base classes for:

- API requests
- View models
- Loading state handling
- Common view behavior
- File selection
- Shared UI state

The BaseView widget connects a ChangeNotifier ViewModel to the screen through Provider.

## 🔌 REST API Integration

The application communicates with backend endpoints using the Flutter http package.

A shared NetworkHelper is responsible for:

- Sending POST requests
- Encoding request bodies as JSON
- Adding authentication headers
- Decoding JSON responses
- Handling unsuccessful HTTP responses

Feature-specific services build on top of this shared network layer.

Examples include:

- LogInService
- GetEmpVacationTypesService
- GetUnreadTasksOrNotificationsCountService

## 🔐 Authentication Flow

The login flow is structured as:

```
Login Screen
     │
     ▼
LogInViewModel
     │
     ▼
LogInService
     │
     ▼
NetworkHelper
     │
     ▼
POST /auth/signin
     │
     ▼
SignInResponseModel
     │
     ▼
Save JWT + Employee ID
     │
     ▼
Application Navigation
```

After successful authentication, the application stores the returned JWT token and employee ID locally using SharedPreferences.

Authenticated API requests then read these values and include the JWT token in the request headers.

## 💾 Local Storage

SharedPreferences is used as lightweight local storage for session-related information.

Stored values include:

- JWT token
- Employee ID

The application initializes SharedPreferences before starting the Flutter application.

## 📡 API Response Models

The project defines dedicated response models for backend responses, including:

- SignInResponseModel
- GetEmpVacationTypesResponseModel
- GetUnreadTasksOrNotificationsCountResponseModel

This keeps JSON parsing inside dedicated model classes rather than directly inside the UI.

## 🧠 State Management

The project uses **Provider + ChangeNotifier** for presentation-layer state management.

ViewModels include:

- LogInViewModel
- GetEmpVacationTypesViewModel
- GetUnreadTasksOrNotificationsCountViewModel

The ViewModels are responsible for:

- Calling feature services
- Updating UI state
- Storing feature data
- Notifying widgets about changes
- Handling feature-level errors

## 📎 File Handling

The vacation request flow includes file selection using the file_picker package.

The shared BaseViewModel provides file selection functionality that can be reused by screens requiring attachments.

## 🎨 Reusable UI Components

The project contains a large collection of reusable components and widgets for:

- Buttons
- Text fields
- Navigation
- Dashboard cards
- Vacation cards
- Notification items
- Profile details
- Filters
- Date-related UI
- Custom headers
- Typography
- Application colors

This separates repeated UI elements from individual screens and keeps screen implementations more manageable.

## 📱 Main Screens

The application contains screens for:

- Splash
- Login
- Home Dashboard
- Vacation History
- Official Leaves
- Request a Vacation
- Notifications
- Profile
- Vacation Filters

## 📊 Backend-Connected Features

The repository contains API-backed flows for:

| Feature | Backend Integration |
|---|---|
| Employee Login | ✅ |
| Employee Vacation Types | ✅ |
| Unread Notifications Count | ✅ |
| Vacation Request UI | UI implemented |
| Vacation History | UI implemented |
| Official Leaves | UI implemented |
| Profile | UI implemented |
| Filtering | UI implemented |

This distinction reflects the current repository implementation rather than presenting static UI screens as completed backend features.

## 📚 What This Project Demonstrates

This project demonstrates practical experience with:

- Flutter application development
- Dart
- Provider / ChangeNotifier
- MVVM-style separation
- REST API integration
- HTTP requests
- JSON response parsing
- JWT authentication flow
- SharedPreferences
- Reusable networking services
- ViewModels
- Reusable Flutter widgets
- File Picker
- Complex multi-screen UI
- API error handling
- Working with an existing application codebase

## 🚀 Getting Started

### Prerequisites

Make sure Flutter is installed and configured.

### Clone the repository

```bash
git clone https://github.com/AhmedElsalhy/VacationsApp.git
```

### Navigate to the project

```bash
cd VacationsApp
```

### Install dependencies

```bash
flutter pub get
```

### Run the application

```bash
flutter run
```

> **Note:** The application communicates with a backend API, so API-dependent features require the corresponding backend service to be available.

## 👨‍💻 Author

**Ahmed Elsalhy**

Flutter Developer

GitHub: [AhmedElsalhy](https://github.com/AhmedElsalhy)
