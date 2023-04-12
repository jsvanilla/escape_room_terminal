#!/bin/bash

BOLD='\033[1m'
GREEN='\033[32m'
RED='\033[31m'
BLUE='\033[34m'
NC='\033[0m' # No Color

folder_name="room2"
guess_list_file="GuessList.txt"
first_key_file="First_Key.txt"

first_key_content= "uVRf%g9rJeS#1jQ%1Ux&DAKqjgqCNG@p6VfDJNyZYyV2pGfc&Cr1TZMNy"

guess_list_content = "1.- Ada Lovelace Hawthorne
2.- Charlotte Bronte Fitzroy
3.- Florence Nightingale Churchill
4.- William Gladstone Fairfax
5.- Victoria Woodhull Montague
6.- Robert Browning Pembroke
7.- Elizabeth Gaskell Coventry
8.- Charles Dickens Pritchard
9.- Emily Dickinson Stockton
10.- John Ruskin Ellsworth
11.- Lewis Carroll Huntington
12.- Beatrice Potter Ashton
13.- Arthur Conan Doyle Caldwell
14.- Mary Shelley Kensington
15.- Alfred Tennyson Radcliffe
16.- Benjamin Disraeli Winthrop
17.- George Eliot Livingston
18.- Oscar Wilde Carrington
19.- Rudyard Kipling Fairfax
20.- Edith Wharton Blackwood
21.- Henry James Worthington
22.- Christina Rossetti Langley
23.- Bram Stoker Atwood
24.- Wilkie Collins Pembroke
25.- Elizabeth Barrett Browning Westwood
26.- William Makepeace Thackeray Heath
27.- George Bernard Shaw St. Clair
28.- Agatha Christie Collier
29.- Thomas Hardy Hargreaves
30.- Samuel Butler Sherwood"

# Verifies if the folder exists
if [ -d "$folder_name" ]; then
    # Verifiies if the file exists
    if [ -f "${folder_name}/${guess_list_file}" ] && [ -f "${folder_name}/${first_key_file}" ]; then
        # Adds the content to the file
        echo "$guess_list_content" > "${folder_name}/${guess_list_file}"
        echo "$first_key_content" > "${folder_name}/${first_key_file}"
        echo "---------------------------------------- 
              ${GREEN}SUCCESS${NC}
        ---------------------------------------- 
        
        ${GREEN}${BOLD}room2 has been opened${NC}
        
        "
    else
        echo "${RED}One or Two files are missing. Check if ${guess_list_file} & ${first_key_file} exist and try again."
    fi
else
    echo "${RED}The ${folder_name} does not exist. You need to create the folder."
fi