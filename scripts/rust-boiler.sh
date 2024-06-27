# Z shell execution script

#!/bin/zsh

# Checks that an argument has been provided
if [ $# -eq 0 ]; then
    echo "Error: A project name is required as an argument."
    exit 1
fi

# Get the project name from the first argument
project_name="$1"

# Create the rust project with its name
cargo new "$project_name"

# Move to the directory where the project is located
cd "$project_name" || exit

# Create .gitignore file and write on it.
echo "/target" > .gitignore

# Confirmation message
echo "Project '$project_name' successfully created with .gitignore which includes '/target'"
