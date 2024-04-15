# Film By Name SwiftUI App
Film By Name SwiftUI App is a simple iOS application built using SwiftUI that allows users to search for movies and view details about them using data fetched from the [OMDb API](http://www.omdbapi.com/).

## Features

- Search for movies by name.
- View details of the selected movie, including title, plot, cast, etc.
- Uses the OMDb API to fetch movie data.

## Screenshots

![Screenshot 1](filmByName-swiftui/Screenshots/Simulator%20Screenshot%201.png)
![Screenshot 2](filmByName-swiftui/Screenshots/Simulator%20Screenshot%202.png)


## Getting Started

To run this project on your local machine, follow these steps:

1. Clone the repository to your local machine:

    ```
    git clone https://github.com/your-username/film-by-name-swiftui.git
    ```

2. Navigate to the project directory:

    ```
    cd kinopoisk-swiftui
    ```

3. Open the `filmByName-swiftui.xcodeproj` file using Xcode.

4. Build and run the project on the simulator or a connected device.

## Usage

1. Enter the name of the movie you want to search for in the text field.
2. Press the "Go for info" button to view details about the movie.
3. Navigate back to the search screen to search for more movies.

## API Key

This project uses the OMDb API to fetch movie data. You need to obtain an API key from [OMDb API](http://www.omdbapi.com/apikey.aspx) and replace `"YOUR_API_KEY"` in the `NetworkManager.swift` file with your actual API key.

## Contributing

Contributions are welcome! Feel free to submit pull requests or open issues for any bugs or feature requests.
