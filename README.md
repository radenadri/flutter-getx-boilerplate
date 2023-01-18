# GetX Boilerplate Template

A boilerplate project created in flutter using GetX.
## How to Use

**Step 1:**

Download or clone this repo by using the link below:

```
https://github.com/radenadri/flutter-getx-boilerplate.git
```

Or simply click on the **Use this template** button and make your own repository using this template.

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies:

```
flutter pub get
```

**NOTE**: Don't forget to change the 'app name' and 'package name' in android, ios, pubspec and strings files.

## Boilerplate Features:

* Home
* Routing
* Dynamic UI support
* GetStorage
* GetX (State Management and Naviagtion)

### Libraries & Tools Used

* [GetX](https://github.com/jonataslaw/getx)
* [Storage](https://github.com/jonataslaw/get_storage)
* [ScreenUtil](https://github.com/OpenFlutter/flutter_screenutil/)
* [Dio](https://github.com/flutterchina/dio)
* [Intl](https://github.com/dart-lang/intl)
* [logger](https://github.com/simc/logger)

### Folder Structure
Here is the core folder structure which flutter provides.

```
flutter-app/
|- android
|- build
|- ios
|- lib
|- test
```

Here is the folder structure we have been using in this project

```
lib/
|- app/
|- main.dart
```

```
app/
|- common/
   |- logger/
   |- storage/
   |- util/
   |- values/
   |- constants.dart
|- domain/
   |- entities/
   |- repositories/
|- modules/
   |- home/
   |- widgets/
|- routes/
main.dart
```

Now, lets dive into the lib folder which has the main code for the application.

```
1- common - Contains all the utilities/common functions  which are using throughout the app. This directory contains `constants`, `loggers`, `utilities`, `theme`, `strings`, `dimensions`, `storage`, `text styles`, `colors` and `images path`.
2- domain - Contains the entities layer of your project.
3- modules - Contains all the ui of your project, contains sub directory for each screen and custo widgets as per the need.
4- routes - Contains the files for routes for your application.
5- main.dart - This is the starting point of the application.
```
**NOTE**: You can use [Get Cli](https://github.com/jonataslaw/get_cli) to auto generate ui pages, controllers and routes.
