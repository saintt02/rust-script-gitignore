# Script for creating a project with cargo and a gitignore file for Rust

This process automates the creation of Rust projects and the configuration of the .gitignore file, improving your workflow and efficiency while working with Rust.

### Supported Shells

  - zsh
  - PowerShell

## Step by Step: Using the Script to Create Projects in Rust with `.gitignore`.

#### 1. Saving the Script

First, you need to save the script to a file on your system, depending on the shell you are running, the extension will be different.

1. We are going to create the file with the respective extension. You can use your preferred text editor (for example, nano, vim).

- For zsh, we will create the file with the .sh extension.

```zsh
nano rust_project_creation.sh
```

- For PowerShell, we will create the file with the .ps1 extension.

```powershell
notepad rust_project_creation.ps1
```

2. Inside the file, copy the code of your respective system script. 

- [zsh](https://github.com/devprogq/rust-script-gitignore/tree/main/scripts/zsh/rust_project_creation.sh)
- [PowerShell](https://github.com/devprogq/rust-script-gitignore/tree/main/scripts/powershell/rust_project_creation.ps1)

3. Close and save the file. 

#### 2 Give permissions to the script

- For adding permissions in Linux/MacOS, you need to execute the following command in the terminal.

```zsh
chmod +x rust_project_creation.sh
```

- For adding permissions in Windows, you need to execute the following command in the terminal.

```powershell
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process
```

### Note: This command sets the execution policy to Bypass for the current session, allowing the script to be executed. Note that this does not change the execution policy permanently, to do so, you need to insert the command into the $PROFILE environment variable, which will automatically change the execution policy for all sessions. to learn more, see the [documentation](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy?view=powershell-7.4)

#### 3 Configure the alias for the script in the configuration file

1. Enter your configuration file.

- For zsh

```zsh
nano ~/.zshrc
```

- For PowerShell

```powershell
notepad #PROFILE
```

2. Add the following alias at the end of the configuration file (with the correct path to your script)

- For zsh

```zsh
alias rust='PATH/TO/YOUR/FILE/rust_project_creation.sh'
```

- For PowerShell

```powershell
New-Alias rust C:\PATH\TO\YOUR\FILE\rust_creation_project.ps1
```

3. Reload the configuration closing and opening the terminal.

#### 4 Using the script

You can now use the rust alias to create a new project in Rust with the name you specify. The alias will call the script and pass the project name as an argument.

For example, to create a project named my_project:

```sh
rust my_project
```

This command will run the script rust_project_creation, which will create the project in Rust and generate a .gitignore file with the specified content.