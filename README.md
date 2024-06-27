# Script for creating a project with cargo and a gitignore file for Rust

This process automates the creation of Rust projects and the configuration of the .gitignore file, improving your workflow and efficiency while working with Rust.

The explanation of how to use the script, from saving it to configuring it with an alias in zsh.

### Step by Step: Using the Script to Create Projects in Rust with `.gitignore`.

#### 1. Saving the Script

First, you need to save the script to a file on your system. Follow these steps:

1. Open your preferred text editor (for example, `nano`, `nvim` or `code`).

```sh
  nano rust_project_creation.sh
```

2. Inside the file, copy the following code (you can have the explained version in /scripts)

```sh
#!/bin/zsh

if [ $# -eq 0 ]; then
    echo "Error: A project name is required as an argument."
    exit 1
fi

project_name="$1"

cargo new "$project_name"

cd "$project_name" || exit

cat <<EOL > .gitignore
debug/
target/
Cargo.lock
**/*.rs.bk
*.pdb
EOL

echo "Project '$project_name' successfully created with .gitignore which includes the specified content."
```

3. Close and save the file. 

#### 2 Give permissions to the script

```sh
chmod +x rust_project_creation.sh
```

#### 3 Configure the alias for the script in the zsh configuration file

1. Enter your configuration file (for example, `nano`, `nvim` or `code`).

```sh
nano ~/.zshrc
```

2. Add the following alias at the end of the configuration file (with the correct path to your script)

```sh
alias rust='PATH/TO/YOUR/FILE/rust_project_creation.sh'
```

3. Reload the configuration closing and opening the terminal.

#### 4 Using the script

You can now use the rust alias to create a new project in Rust with the name you specify. The alias will call the script and pass the project name as an argument.

For example, to create a project named my_project:

```sh
rust my_project
```

This command will run the script rust_project_creation.sh, which will create the project in Rust and generate a .gitignore file with the specified content.
