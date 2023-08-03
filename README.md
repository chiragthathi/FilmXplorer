# FilmXplorer
Unlocking Movie Secrets: Notes on Powerful Data Retrieval Method

FilmXplorer is a powerful Bash script that allows you to access detailed information about your favorite movies instantly. With just a movie title as an argument, you can uncover a wealth of information, including Title, Year, Genre, IMDb Rating, and a brief Summary, all from the comfort of your terminal.

Table of Contents:
Installation
Usage
Features
Data Retrieval Method
Technologies Used
Contributing
Acknowledgments
Contact

Installation-
Clone this repository to your local machine.
Ensure you have curl installed. If not, install it using your package manager.
Obtain an API key from OMDB by signing up on their website.
Open the script movie_info.sh and replace the variable omdb_api_key with your obtained API key.
Make the script executable with the following command:  chmod +x movie_info.sh

Usage-
To fetch movie details, run the script with the movie title as an argument. 
For example-  ./movie_info.sh "The Shawshank Redemption"

Features-
Fetches detailed information about movies from the OMDB API.
Displays essential details, such as Title, Year, Genre, Rating, and Summary.
Gracefully handles errors, providing user-friendly feedback for movies not found in the database or API-related issues.

Data Retrieval Method-
FilmXplorer interacts with the OMDB API by sending a GET request using the curl command. The script constructs the API endpoint URL with the provided movie title and the API key. The API responds with a JSON object containing comprehensive movie details. The script creatively utilizes a combination of grep and cut commands to extract specific fields from the JSON response.

Technologies Used-
Bash Scripting

Contributing
Contributions to FilmXplorer are welcome! If you find a bug, have an enhancement idea, or want to propose a new feature, feel free to open an issue or submit a pull request.

Acknowledgments
Special thanks to the OMDB API for providing movie data.
Thanks to MLH for inspiring this project.

Contact-
If you have any questions, suggestions, or need support, feel free to reach out to us:
Email: thathichirag00@gmail.com