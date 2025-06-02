# Flutter Profile App

A basic Flutter application that demonstrates screen navigation, UI components, and loading indicators by displaying a user's profile. This app is a part of a learning task to get comfortable with app structure, widget usage, and navigation in Flutter.

## ✨ Features

- Home Screen with a welcome title and a navigation button
- Profile Screen displaying:
  - A circular profile image
  - User details: Name, Email, Phone Number
  - Navigation back to the Home Screen
- Loading indicator (CircularProgressIndicator) displayed for 2 seconds before navigating to the Profile Screen

## 📱 Screens

### Home Screen
- AppBar with the title: *"Welcome to Flutter Internship"*
- Centered button labeled *"View Profile"*
- On pressing the button, a CircularProgressIndicator is shown for 2 seconds before navigating to the Profile screen

### Profile Screen
- AppBar with the title: *"My Profile"*
- Circular profile image (from asset or network)
- Text widgets for:
  - Name
  - Email
  - Phone Number
- *"Go Back"* button to return to the Home Screen

## 📂 Project Structure
lib/

 ├── main.dart
 
 ├──core.dart
 
screens/

 ├── home_screen.dart
 
 └── profile_screen.dart
 
widgets/

 └──profile_info_card.dart
 
assets/
images/

 └── userIcon3.jpg
 
fonts/

 └──Prompt-Regular.ttf


# This simple app demonstrates Flutter fundamentals like:

Stateless and Stateful widgets

Navigation using Navigator

Layouts using Column, Center, CircleAvatar, etc.




