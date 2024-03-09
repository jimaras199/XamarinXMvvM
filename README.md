![ZamarinXMvvM](https://github.com/jimaras199/XamarinXMvvM/assets/122220984/ad08eb6a-a7ac-4862-bf79-74c8c2fa2754)
## Xamarin.Forms demo application delivering dynamic and adaptive view of data.

**Purpose**

This project serves as a demonstration of essential concepts in Xamarin Forms, showcasing the Model-View-ViewModel (MVVM) framework pattern. 
It does not aim to provide any type of service to end users but rather to showcase the developer's knowledge and skills in Xamarin Forms development.

**What it does**

The application consists of two main screens: "Tables" and "Boat".

* Tables Screen  
The Tables screen features two buttons, each navigating to a different view.
The first button, labeled "Tables", navigates to a view based on a grid element.
The second button, labeled "Boat", navigates to an icon displaying a boat with SVG properties.
The Tables screen includes:
A grid layout with three rows, each with specific proportions of the screen.
The first row displays content from a JSON file and the current system time.
The second row presents the same JSON file in table format.
The third row features repetitive text ("Lorem ipsum") to demonstrate content formatting.
The entire view is wrapped in a scrollable element for seamless navigation.
* Boat Screen  
The Boat screen displays an icon representing a boat, occupying the maximum possible screen space without cropping or stretching the image and reacting to orientation.

**To install and run the application**

Clone this repository to your local machine.
Open the solution file in Visual Studio.
Ensure all required dependencies, including Xamarin Forms and any third-party libraries, are installed.
Build and deploy the application to your Andoid device (iOS is untested).
Run the application on a physical device or emulator to experience its functionality.

**Notes**

This project utilizes the MVVM framework pattern, written in C# language within Visual Studio IDE.
Third-party libraries such as Newtonsoft and SkiaSharp are used to enhance functionality and presentation.
The application has been tested on physical devices for optimal performance.
Please note that certain platform-specific features may require additional configuration or setup, such as Apple Developer Program membership for iOS projects.
