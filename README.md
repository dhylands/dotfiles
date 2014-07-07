This is my personal collection of dotfiles.

I don't like to make extensive modifications to ~/.bashrc so
I typically just add a line to source ~/.startup and it in turn processes
all of the files in the ~/.startup.d directory.

To install:
```bash
cd ~
git clone https://github.com/dhylands/dotfiles.git .dotfiles
cd .dotfiles
./install.sh
```
