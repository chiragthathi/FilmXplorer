#!/bin/bash

omdb_api_key="28bbc2ad"

if [ -z "$omdb_api_key" ]; then
    echo "Please include the API key."
    exit 1
fi

if [ -z "$1" ]; then
    echo "Usage: $0 <movie-title>"
    exit 1
fi

movie_title=$(echo "$1" | tr " " "+")
api_endpoint="http://www.omdbapi.com/?t=${movie_title}&apikey=${omdb_api_key}"
data=$(curl -s "$api_endpoint")

if [[ "$data" = *"Movie not found"* ]]; then
    echo "Movie is not found in the database."
    exit 1
fi

title=$(echo "$data" | grep -o '"Title":"[^"]*' | cut -d'"' -f4)
year=$(echo "$data" | grep -o '"Year":"[^"]*' | cut -d'"' -f4)
genre=$(echo "$data" | grep -o '"Genre":"[^"]*' | cut -d'"' -f4)
rating=$(echo "$data" | grep -o '"imdbRating":"[^"]*' | cut -d'"' -f4)
summary=$(echo "$data" | grep -o '"Plot":"[^"]*' | cut -d'"' -f4)

echo "Title: $title"
echo "Year: $year"
echo "Genre: $genre"
echo "Rating: $rating"
echo "Summary: $summary"
