# Rock Paper Scissors Game  

A Rock Paper Scissors game built with Flutter. This game offers both a **Classic Mode** and a **Bonus Mode** with extra choices. Players can choose between standard gameplay or the enhanced mode with additional options like Lizard and Spock.  

![Video Demo](assets/demo.mp4)  

## Features  

- **Classic Mode**: Play the traditional Rock, Paper, Scissors game.  
- **Bonus Mode**: Unlocks additional moves (Lizard, Spock) for a more strategic game.  
- **Smooth Animations**: Enjoy an engaging experience with sleek animations.  
- **Responsive Design**: Optimized for mobile and desktop devices.  

## Bonus Mode  

To enable the **Bonus Mode** with extra options, navigate to lib/src/app.dart, 
and set the game type as shown below:  

```dart  
BlocProvider(  
  create: (context) => GameBloc(service: GameService())  
    ..add(  
      SetGameType(isBonus: true),  
    ),  
);
```  

## Installation  

### Prerequisites  

Ensure you have the following installed:  

- Flutter SDK (version >= 3.5)  
- Dart SDK  
- Android Studio / Visual Studio Code for development  
- A physical device or emulator for testing  

### Getting Started  

1. Clone the repository:  

```bash  
git clone https://github.com/jer3miah/rock_paper_scissors.git  
```  

2. Navigate to the project directory:  

```bash  
cd rock-paper-scissors/client  
```  

3. Install dependencies:  

```bash  
flutter pub get  
```  

4. Run the app:  

- For mobile:  
  ```bash  
  flutter run  
  ```  
- For desktop (if supported):  
  ```bash  
  flutter run -d windows  
  ```  

## License  

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.  
