# solid_software_test

A test task project.

### Run a Android or iOS project

> flutter run

### Run a file generation

> dart run build_runner build

### Run tests

> flutter test

## Test task

1. Install Flutter
2. Create a test application
3. The application should: display the text "Hello there" in the middle of the screen and after tapping anywhere on the screen, a background color should be changed to a randomly generated color. You can also add any other feature to the app - that adds bonus points
4. Please do not use any external libraries for color generation
5. Use solid_lints (https://pub.dev/packages/solid_lints) to perform static code analysis and fix any issues.
6. Push code to GitHub
7. Send the link to the GitHub repository back

## Implementation

The task implemented with three approaches:

### Flutter Widget State management
- Implementation folder: `/lib/states/`
- Main Component:  `StatefulWidget` 
  
### Cubit State management
- Implementation folder: `/lib/cubit/`
- Main Component:  `Cubit` 
  
### Clean Architecture
- Implementation folder: `/lib/clean_architecture/`
- Main Component:  `Entity`, `Failure`, `Repository`, `Bloc`, `DataSource` 

> Note: The `Failure` here is used for showing the error handling approach. Without changing the code you shouldn't see the failure.

### Packages
- auto_route - used for the application routing.
- bloc, flutter_bloc - used for state management(recommended by Google).
- dartz - used for the function programming. 
- easy_localization - used for localization of the strings.
- freezed_annotation, freezed - give a light way to work with DAOs.
- get_it, injectable - Dependency injection. 
- logger - used for printing logs in pretty format.

