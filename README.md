![ZamarinXMvvM](https://github.com/jimaras199/XamarinXMvvM/assets/122220984/ad08eb6a-a7ac-4862-bf79-74c8c2fa2754)
# Xamarin.Forms MVVM Demonstration Project

A cross-platform application built with **C# and Xamarin.Forms**, demonstrating the **MVVM architectural pattern** and a **shared-code approach** across platforms.  
The project focuses on clean separation of concerns, event-driven UI updates, and maintainable application structure.

## Stack
- C#
- Xamarin.Forms
- MVVM architecture
- Shared codebase
- Newtonsoft.Json
- SkiaSharp
- Visual Studio

## What this project demonstrates
- Practical implementation of the **Model–View–ViewModel (MVVM)** pattern
- Clear separation between UI, presentation logic, and data layers
- Event-driven UI updates without tight coupling
- Responsive layouts adapting to device orientation and screen size
- Integration of external data sources (JSON) into the UI layer

## Application Overview
The application consists of two main screens used to demonstrate different UI and data-binding scenarios:

### Tables Screen
- Displays structured data loaded from a JSON source
- Uses grid-based layouts with proportional sizing
- Demonstrates dynamic data binding and scrollable content
- Shows real-time system data updates

### Boat Screen
- Renders a scalable SVG-based icon using SkiaSharp
- Adapts to device orientation without distortion
- Demonstrates responsive UI behavior across screen sizes

## Project Structure
- **Views**: UI components and layouts
- **ViewModels**: Presentation logic and state management
- **Models**: Data representation and parsing

## How to run
1. Clone the repository
2. Open the solution in Visual Studio
3. Restore NuGet packages
4. Build and deploy the application to an Android emulator or physical device

## Notes
The project was developed and tested using physical Android devices.  
iOS deployment may require additional configuration such as Apple Developer Program membership.
