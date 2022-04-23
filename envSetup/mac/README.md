

# General Setting
    1) Display setting, choose scale
        => more space 
        => night shift
    2) enable three finger drag: 
        => accessibility 
        => pointer control 
        => trackpad options 
        => enable dragging 
        => three finger drag 
        => increase speed with one block
    3) remove all the unnecessary app from the dock (left with: finder, safari, system preference)
    4) system preference 
        => Dock&Menu Bar 
        => hide dock, set it automatically show, hide top bar 
        => Position on Left
        => scroll down to Spotlight 
        => uncheck show in Menu Bar
    5) add accessability to the top bar: accessibility 
        => show in Control Center 
        => play with shortcut
    6) Replace by cursor pro" Accessibility 
        => Zoom Option 
        => since point Pro is introduced, uncheck hover text
	      [!] hover
          + Text 32pt
          + Text font (choose whatever you want)
          + Activation modifier Option/Alt
          + play with color
    7) arrange app in the launchpad 

    8) go to preference 
        => general 
        => set your favorite highlight color and accent color (usually purple) 
        => set appearance to auto
    9) Safari
	      [!] enable cookie: preference 
            => privacy 
            => uncheck website tracking
	      [!] preference 
            => Tabs 
            => Compact

    10) Mac --> system preference --> keyboard
        [!] modifier key (if you have connect to outer keyboard)
            + switch the cmd and alt(option) key for [G815-RGB keyboard] (do not modify the apple built-in one)
        [!] input source
            + pinyin
            - do not check "Use the CAPSLOCK key to switch to and from U.S.
        [!] keyboard: fn (no Nothing)
        [!] shortcuts

          @ Mission Control [uncheck all this]
	            - Mission Control:            ctrl+up 
	            - show notification center:   cmd+left
	            - Application windows:        cmd+down 
	            - show desktop:		            cmd+right
	            - move left a space:	        ctrl+left
	            - move right a space:	        ctrl+right 
          @ launchpad  
	            - Turn Dock Hiding On/Off option+cmd+D
	            - Show Launchpad ctrl+down
          @ app shortcut 
	            >> "+"
	            >> select app
	              [kitty]
		              - Hide kitty --> shift+cmd+alt+h
		              - Reload Preferences --> ctrl+cmd+enter
	              [Safari]
		              - Show Favorites Bar --> ctrl+f
		              - Hide Favorites Bar --> ctrl+f
                [Chrome]
                  - Always Show Bookmarks Bar --> ctrl+f
	              [global]
		              - Preferences... --> shift+ctrl+enter
		              - Tile Window to Left of Screen --> ctrl+`
		              - Print... --> ctrl+cmd+p
		              - Open File... --> shfit+cmd+o
		              - Minimize --> ctrl+cmd+option+M (so you don't mistakenly push that button while typing)
		              - restore the minimized windows: cmd+tab --> select the windows --> hold cmd and press alt(option) at the same time --> hold option and release cmd 
          @ spotlight
            - uncheck both
          @ default
            - show favorites bar
            - hide one application:	cmd+h
            - show Dock:		cmd+alt+d
            - force quit:		cmd+alt+q
            - switch between app:	cmd+tab
	          - enter/exit full screen: ctrl+cmd+f


    11) modified notification window
    12) Install Alfred




# Terminal Level

    1) Install Xcode tool (necessary for lots of Mac stuff)
      >> xcode-select --install

    2) Install Homebrew --> brew.sh --> copy the link for installation [ remember to change the users name, here is jojo ]
	    >> echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/jojo/.zprofile 

    3) Install Terminal Emulator
	    >> brew install alacritty
      [optional]
        >> brew install iterm2 --cask
        >> curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

    4) optional
      >> open /
	      + drag disk and user to the side bar of file manager (hover over to the disk name)
	      + remove document from side bar

    5) Alacritty Configuration
      >> refer to alacritty.yml 

    6) Nerd Font
      >> Download Nerd Font
	    >> https://github.com/ryanoasis/nerd-fonts
	    >> patched-fonts
	      [!] for example
	      >> FiraCode --> Light --> complete --> Fira Code Light Nerd Font Complete.ttf --> Download
        >> font
        >> search folders and install

    7) Install zsh
	    >> brew install zsh

    8) Install oh-my-zsh --> https://ohmyz.sh
	    >> ..(installation)
	    >> exit
      [!] Export Homebrew path to .zshrc
      >> echo '\n\n\n\n\n# ================ Personal Configuration ================\n' >> ~/.zshrc
      >> echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc

    9) Powerlevel10k (p10k.txt sample is available)
	    [!] https://github.com/romkatv/powerlevel10k#oh-my-zsh
	    >> git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
	    >> vim ~/.zshrc
	    >> change theme to "powerlevel10k/powerlevel10k"
	    >> source ~/.zshrc

    10) env  
      >> brew install git
      >> brew install gcc
      >> brew install neovim
      >> echo '\n# neovim' >> ~/.zshrc
      >> echo 'alias vim="nvim"' >> ~/.zshrc
      >> echo 'export EDITOR="nvim"\n' >> ~/.zshrc

    11) check .zshrc
      >> echo '\n# customize LS-colors (directory) --> website that generate value code: https://geoff.greer.fm/lscolors/' >> ~/.zshrc
      >> echo '# green & unbold' >> ~/.zshrc
      >> echo 'export LSCOLORS=cxfxcxdxbxegedabagacad' >> ~/.zshrc

    12) Neovim Configuration
      >> init.lua
      >> mkdir user
      >> refer to git repo

    13) macOS control: drag windows without titlebar
      [!] https://www.mackungfu.org/UsabilityhackClickdraganywhereinmacOSwindowstomovethem
      [.] enable
        >> defaults write -g NSWindowShouldDragOnGesture -bool true
        >> exit
      [.] disable
        >> defaults delete -g NSWindowShouldDragOnGesture

    14) Addon Productivity
      >> brew install numi --cask
      >> brew install keycastr --cask
	      [!] open it
	        + toggle capturing: ctrl+n (start/stop catching keystroke)
	        + display --> select visualizer: Svelte --> display all keystrokes
      >> brew install karabiner-elements --cask
	      [!] description:
	        + I understand it as a virtual keyboard control center, so it manage all the keyboard you have connected with the laptop
	        + This download comes with two apps
	      [!] Use Karabiner-Elements for keep mapping
	        + open for TWO KARABINERs to access privacy 
	        + allow app 
	        + target device: choose which keyboard you want to modify 
		    [!] for all devices: add item 
		    [!] map "caps_lock to left_control"
		    [!] outer keyboard for whatever you want
	      [!] Mapping website: https://ke-complex-modifications.pqrs.org/?q=ctrl%20%2B%20%5B%20escape
	        - search for any combination you want
	        - Vi style arrow: super useful --> ctrl+hjkl
		    [!] click import -> import -> ok -> enable (only enable control + hjkl)

    15) tmux
      >> brew install tmux
      >> tmux info | grep -e RGB -e Tc
	      [!] if Tc and RGB is missing
	    >> vim ~/.tmux.conf
	        ===========================================
	        ### fixing the missing color scheme ###

	        set-option default-terminal "tmux-256color"
	        set-option -a terminal-overrides ",XXX:RGB"
	        set-option -a terminal-overrides ",*256col*:RGB"
	        set-option -a terminal-overrides ",alacritty:RGB"

	        # reference: https://gist.github.com/bbqtd/a4ac060d6f6b9ea6fe3aabe735aa9d95
	        ===============================================
      >> other configuration 
        [!] refer to git repo

    16) openssl 
      >> brew install openssl 
        [!] sometimes openssl@3, follow the tips on in the terminal
        [!] mostly, the terminal output will prompt you to set path variable
      >> echo 'export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"' >> ~/.zshrc
      >> echo 'export LDFLAGS="-L/opt/homebrew/opt/openssl@3/lib"' >> ~/.zshrc
      >> echo 'export CPPFLAGS="-I/opt/homebrew/opt/openssl@3/include"' >> ~/.zshrc

    17) entertainment
      >> brew install cointop
      >> brew install bpytop 
      >> brew tap teamookla/speedtest
      >> brew update
      >> brew install speedtest --force (brew uninstall speedtest --force)
      [!] go to https://bit.ly/nodenpm
      >> download macOS installer LTS version
      >> node --version
      >> npm --version
      >> sudo npm install -g mapscii


# Add-on

    1) Install Python environment
	    >> brew install miniforge
	    >> conda init "$(basename "${SHELL}")"
	      [!] check your silicon, brew install miniforge for apple silicon --> arm64


    2) tensorflow (Jeff Heaton Github page)
      [!] check path
        >> which python 
        >> /opt/homebrew/Caskroom/miniforge/base/bin/python 
        >> cd /Users/jojo/[]/cs/ai/deep_learning/jeff heaton
        >> git clone 'https://github.com/jeffheaton/t81_558_deep_learning.git'
        >> cd t81_558_deep_learning
      [!] go inside base environment
        >> conda install -y jupyter 
        >> conda deactivate
        >> conda env create -f tensorflow-apple-metal.yml -n tensorflow
        >> conda info -e
        >> conda activate tensorflow
        >> conda install nb_conda
      [?] 
        >> register tensorflow environment, make sure tensorflow environment has activated 
      [?] 
        >> python -m ipykernel install --user --name tensorflow --display-name "Python 3.9 (tensorflow)"
      [!] test env
        >> jupyter notebook
      [!] go to https://github.com/jeffheaton/t81_558_deep_learning, find the testing code
      [!] everytime use this method, check if there is an update on the website

    3) pytorch (https://www.youtube.com/watch?v=D1655wwusMs&t=375s)
      [!] not yet GPU supported, current ran on Rosetta (x86)
        >> brew update
        >> conda create --name pytorch python=3.8
        >> conda activate pytorch
        >> conda install -c pytorch torchvision 
	

    4) C++
      > full command: g++ -Wall -std=c++20 xxx.cpp -o run && ./run
      > g++: compiler
      > -Wall: show all warning if even some missing write code won't lead to the crush of programs [ All Warning ]
      > -std=c++20: the version of c++ rules
      > xxx.cpp: the program you named
      > -o run: give the name to compiler file
      > ./run: execute the compiler file

      [!] SFML 
        >> brew install sfml
        >> brew info sfml
        [!] find the where sfml folder has beedn downloaded
        [!] aside from the usual command, two path need to sepcify
          + where is SFML package (I)
          + where is the necessary libraries (L)

        [!] compile
          >> g++ test.cpp -Wall -I/[1] -o run -L/[2] -lsfml-graphics -lsfml-window -lsfml-system
          [1]: opt/homebrew/Cellar/sfml/2.5.1_1/include
          [2]: opt/homebrew/Cellar/sfml/2.5.1_1/lib
          [?]: you can try build with source, and save the package to somewhere with less name
     
    
    5) Java
      [!] first download java env
        1. Java (JDK): https://java.com/en/download/help/develop.html
        2. Java SE Development Kit: https://www.oracle.com/java/technologies/downloads/
        3. restart terminal
      
      >> javac file.java
      >> java file


    6) Application
      [OK] chrome
      [OK] zoom.us
      [OK] baidunetdisk
      [OK] notability
      [OK] movist
      [OK] cursor Pro
      [OK] xcode (app store)
      [OK] The Unarchiver (app store)
      [?] parallels
      [?] istats (cost $9/mo, it's your choice, search from website)
      [?] blender
      [?] weka



