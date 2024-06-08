# Installing Neovim on Arch Linux

## Step 1: Update System ⚡
Before installing Neovim, it's always a good idea to update your system:

```sh
sudo pacman -Syu
```

## Step 2: Now, let's install Neovim. Think of it as your sleek spaceship!
Install Neovim using the Pacman package manager:
```sh
sudo pacman -S neovim
```

## Step 3: Did the installation blast off successfully? Let's check the engine!
Check the installed version of Neovim to verify the installation:
### (it's like a fancy mission control):

```sh
nvim --version
```

# Awesome! Now, for the real upgrade - NvChad! It's like adding nitro to your spaceship!
## Step 1: let's beam down NvChad with the power of git clone!

```sh
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
```

## Step 2: Configure neovim via lua 
Copy only lua folder to :
```sh
~/.config/nvim/
```

## Step 4: Time to fire up the engines! Launch Neovim with:
NvChad should kick in, transforming your spaceship into a coding battle station!
```sh
nvim
```
## Step 5: a) Plug-in Time (But Wait, There's More!)  NvChad uses lazy.nvim to manage plugins. Once it finishes downloading them (don't be a code-hungry space gremlin, be patient!), run this in Neovim:

This installs the plugins, basically giving your ship all the cool gadgets.

```sh
:MasonInstallAll
```
### b) Clean Up Crew (Optional)

You can delete the .git folder from your Neovim config if you don't plan on tinkering with the downloaded files. Think of it as spring cleaning your spaceship.

```sh
 rm -rf ~/.config/nvim/.git
```
### c) Keeping Your Ship Shiny (Updates)
To keep NvChad updated with the latest features, run:
```sh
Lazy sync
```

### step 6 :Error haneling :) 
if any error occured dont tell me figure out yourself !!! :)

### Warning! Deep Space Dangers Ahead ⚠️

### This guide is your launchpad. For advanced stuff and troubleshooting, explore the endless code galaxies and consult the NvChad docs. Remember, space cowboys always help each other out!

### Happy coding adventures, and may the lines of code flow smoothly!

