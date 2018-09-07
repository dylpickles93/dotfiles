# my dotfiles

### Set up on a new machine
1. Navigate to the user directory `cd ~`
2. Clone the git repo `git clone https://github.com/dylpickles93/dotfiles.git`
3. Run the script `bash ./dotfiles/makesymlinks.sh`
4. In your `~` directory, add a `.credentials` file with any env var credentials you need.

### Add or remove a file from the symlinking script
Add the file name separated by a space in the `files` variable
- eg) `files="bash_profile  bashrc  git-completion.bash  gitconfig"`

### Notes
- Due to symlinking, you can edit the actual .bash_profile file and have the 
dotfile bash_profile automatically update
- The keybindings are not tied to your AWS EC2 instance, but rather tied to your
account. There is no need to manually set this when creating a new EC2, but is 
good to include in the dotfiles in case you want revert back to previous version.