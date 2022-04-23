

# Caution
    >> don't make change to the following, here is just showing the process
    =======================================================================
    usually, they enable it automatically

    -----------------
    [!] check repository
    >> sudo vim /etc/apt/sources.list
    
    -> uncomment line start with "deb-src"
    -> if broken, will show "xxxx" has no installation candidate 
    [check]: https://www.youtube.com/watch?v=VdRKKkUre5I




# ArchLinux: Manjaro

    >> Update command: sudo pacman -Syu
    >> Install command: sudo pacman -S package_name

# Terminal Level

    [1]. zsh shell & oh-my-zsh

    -----------------------------
    >> sudo pacman -S install zsh
    >> sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    >> chsh -s /bin/zsh
	  [ plugin, search for installing ]


    [2]. Homebrew install

    -----------------------------
	  [ go to official website and copy the download link ]
	  >> echo '\n\n\n\n\n# ================ Personal Configuration ================\n' >> ~/.zshrc
	  >> echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.zshrc
	  >> brew --version
    >> brew install gcc (same result as using sudo apt install gcc)
    >> brew install neovim (for latest version)
    >> echo '\n# neovim' >> ~/.zshrc
    >> echo 'alias vim="nvim"' >> ~/.zshrc
    >> echo 'export EDITOR="nvim"\n' >> ~/.zshrc

    [3]. check graphic card/nvidia

    -----------------------------
    >> nvidia-smi
    [ if failed ]
    >> go to pop shop and update all software, including operating system updates
    >> sudo add-apt-repository ppa:graphics-drivers/ppa --yes
    >> sudo apt update
    >> sudo apt install nvidia-driver-470 (according to current version)
    [ restart ]

    [4]. install Alacritty

    -----------------------------
    >> sudo pacman -S install alacritty
    [ if not set default, use following command ]
    >> sudo update-alternatives --config x-terminal-emulator
    [ move configuration file to nearby destination ]
    >> cd /usr/share/doc/alacritty/example
    >> mkdir ~/.config/alacritty (if doesn't exist)
    >> cp alacritty.yml ~/.config/alacritty
	

    [5]. change user's name and system name (operate at root level)

    -----------------------------
    >> usermod -l newusername -d /home/newusername -m oldusername
    >> groupmod -n newusername oldusername
    >> ln -s /home/newusername /home/oldusername
    >> chfn -f "YourFirstName YourLastName" newusername
    [ check with the following command ]
    >> cat /etc/passwd
    >> cat /etc/group
    [ references: https://www.youtube.com/watch?v=k2ZeUkHZSn0 ]


    [6]. change hostname (this is done manually, I believe you can assess to UI to make this change)

    -----------------------------
    >> hostname
    >> hostnamectl
    >> sudo hostnamectl set-hostname newname
    [reflect the change]
    >> sudo vim /etc/hosts
    ======================
    127.0.0.1 localhost 
    127.0.1.1 old_hostname
    |change to|
    127.0.0.1 localhost
    127.0.1.1 new_hostname
    using first two command to check if changes reflect
    [ reference: https://linuxconfig.org/how-to-change-hostname-on-linux ]


    [7]. upgrade & upgrade

    -----------------------------
    [ restart ]
    >> sudo pacman -Syu



    [8]. Powerlevel10k (p10k.txt sample is available)

    -----------------------------
	  : https://github.com/romkatv/powerlevel10k#oh-my-zsh
    >> git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    >> vim ~/.zshrc
    >> change theme to "powerlevel10k/powerlevel10k"


    [9]. gnome-tweak-tool 

    -----------------------------
    >> sudo apt-get install gnome-tweaks
    [ remapping keys ]
    >> gnome-tweak --> Keyboard & Mouse --> Additional Layout Options --> Ctrl position --> check the following two options
    => Caps Lock as Ctrl
    => Swap left alt with left ctrl
	
    [ if the desktop env or linux distro doesn't have tweak, try manually change it
    ======================================
    ! swap Caps_Lock with Control_L
    ! 
    remove Lock = Caps_Lock
    remove Control = Control_L
    keysym Control_L = Caps_Lock
    keysym Caps_Lock = Control_L
    add Lock = Caps_Lock
    add Control = Control_L
    ======================================
    [ https://destinmoulton.com/blog/2020/remap-capslock-to-ctrl-with-xmodmap-automatically-on-startup/ ]

    [10]. remap key

    -----------------------------
    : install xmodmap on Debian operating system 
    >> sudo apt-get install x11-xserver-utils
    : check current keymap
    >> xmodmap
    >> sudo apt install xcape
    >> vim ~/.Xmodmap (touch this new file)
    : add the following
    ======================================
    ! vim-like arrow key mapping with ctrl
    !
    keycode 66 = Mode_switch
    keysym h = h H Left
    keysym j = j J Down
    keysym k = k K Up
    keysym l = l L Right
    ======================================
    [ in oder to know the keycode for remapping ]
    >> xev (66 is not necessarily ctrl)
    : small window pop up, type keys on the keyboard, and you will see the code appear on terminal screen
    [ once modify scripts, you would like to execute the file for it to take effect
    >> xmodmap ~/.Xmodmap
    [ It seems like the if the same code in .Xmodmap get executed twice, it will override the previous setting ]
    [ meaning if caps_lock map to ctrl first, and it will caps_lock(ctrl) will be mapped again to ctrl, which will running into error ]
    [ I don't know why, so in that case you can reset the all setting and start from beginning ]
    >> setxkbmap

    ? this method will lost effect after every reboot, and I have do this over again, so looking for a method that can permanently change it in the system
    >> write xmodmap ~/.Xmodmap to a file name ~/xmodmap.sh
    >> chmod +x ~/xmodmap.sh
    >> ./xmodmap.sh

    references
    [ http://clay-atlas.com/us/blog/2021/07/02/linux-en-map-up-down-left-right-xmodmap ]
    [ https://command-not-found.com/xmodmap ]



    [11]. enable root login

    -----------------------------
    >> sudo apt update
    >> sudo passwd
    [ enter password twice ]



    [12]. Terminator Configuration

    -----------------------------
    [ shortcut ]
    I. Preference --> Keybindings 
      = copy:		ctrl+c
      = new_tab:	ctrl+t
      = paste:		ctrl+v
      = preferences:	shift+ctrl+enter
      = split_horiz:	ctrl+alt+h
      = split_vert:	ctrl+alt+v
      = zoom_in:	ctrl+=
      = zoom_out:	ctrl+-
      = go_down:	ctrl+j
      = go_left:	ctrl+h
      = go_right:	ctrl+l
      = go_up:		ctrl+k
      = resize_down:	alt+Down
      = resize_left:	alt+Left
      = resize_right:	alt+Right
      = resize_up:	alt+Up

    [ general ]

    [ color ]
    classic ubuntu terminal color: #300a24

    [ working directory ]
    preference --> layouts --> default --> window0 --> terminal child1 --> working directory: /home/username/..




# OS level

    [1]. shortcut

    ==========================
    >> Setting --> keyboard --> customize shortcut: 
    [ Launchers ]
    => Shift+Ctrl+H:	open home folder
    => Shift+Ctrl+T:	open terminal
    => Shift+Ctrl+B:	open browser
    => Shift+Ctrl+P:	open setting
    => super:         search (exit with <Esc> command)


    [ Navigation ]
    => Ctrl+Tab: Switch application
    => ctrl+`:   switch windows

    [ System ]
    => Super+L: Lock Screen
    => Super+A: show all application

    [ Typing ]
    => Switch to next input source

    [ Windows ]
    => Restore window

	  [ screenshots ]
    => shift+ctrl+#(3): copy a screenshot of a window to Pictures
    => shift+ctrl+$(4): copy a screenshot of an area to Pictures

    [ Displays ]
	  >> Setting -> Displays --> Fractional Scaling: 175% (DELL XPS 15) --> Night shift

    [ Mouse&Touchpad ]
	  >> suit yourself


    [2]. install google chrome
    ==========================
    >> go to software package manager
    >> click three dots at the upper right panel
    >> choose preferences --> third party --> enable AUR (Arch_User_Repository) --> enable Sanp Support
    >> go back and search google chrome, install the stable version


    [3]. fractional scaling (resolution change)
      ==========================
    >> go to preferences display setting --> set resolution to 100% scale
    >> gnome-tweaks
    >> fonts --> Hinting (None) --> Antialiasing --> subpixel (for LCD screens)
    >> scaling factor = 1.3













