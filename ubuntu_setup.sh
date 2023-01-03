silent_exec () {
	echo -n "$ $*"
	OUTPUT=$($@ 2>&1)

	if [ $? -ne 0 ]; then
        echo "$OUTPUT"
        echo ""
        echo "Failed to Execute $*" >&2
        exit 1
  else
      echo " ==============> Finished"
  fi
}

APT_INSTALL="sudo apt install"
FLATPAK_INSTALL="sudo flatpak install"


setup alias in .bashrc
echo "Starting Setup ==> Alias"
cat ./alias >> ../.bashrc
echo "Finished Setup ==> Alias"

echo "Finished ==> Alias"

echo "Starting Setup ==> Apt Apps"

$APT_INSTALL -y ubuntu-restricted-extras
sudo apt update -y && sudo apt upgrade -y && sudo apt clean -y && sudo apt autoclean -y && sudo apt autoremove -y

silent_exec $APT_INSTALL -y git
silent_exec $APT_INSTALL -y htop
silent_exec $APT_INSTALL -y neovim
silent_exec $APT_INSTALL -y curl
silent_exec $APT_INSTALL -y openvpn
silent_exec $APT_INSTALL -y vlc
silent_exec $APT_INSTALL -y steam
silent_exec $APT_INSTALL -y tree
silent_exec $APT_INSTALL -y emacs
silent_exec $APT_INSTALL -y neofetch
silent_exec $APT_INSTALL -y haskell-stack
silent_exec $APT_INSTALL -y rofi
silent_exec $APT_INSTALL -y gimp
silent_exec $APT_INSTALL -y telegram-desktop
silent_exec $APT_INSTALL -y youtube-dl
silent_exec $APT_INSTALL -y obs-studio
silent_exec $APT_INSTALL -y ffmpeg
silent_exec $APT_INSTALL -y flatpak
silent_exec $APT_INSTALL -y gnome-software-plugin-flatpak
silent_exec $APT_INSTALL -y flameshot
silent_exec $APT_INSTALL -y numlockx
silent_exec $APT_INSTALL -y terminator
silent_exec $APT_INSTALL -y ranger
silent_exec $APT_INSTALL -y pavucontrol-qt
#silent_exec $APT_INSTALL -y chromium-browser
silent_exec $APT_INSTALL -y gparted
silent_exec $APT_INSTALL -y postgresql postgresql-contrib

silent_exec $APT_INSTALL -y apt-transport-https make gcc libswscale-dev libavformat-dev libavutil-dev libavcodec-dev -y

silent_exec $APT_INSTALL -y i3lock dmenu feh arandr nitrogen picom polybar
silent_exec $APT_INSTALL -y i3


sudo apt update -y && sudo apt upgrade -y && sudo apt clean -y && sudo apt autoclean -y && sudo apt autoremove -y

echo "Finished ==> Apt Apps"

echo ""

echo "Starting Setup ==> Flatpak Apps"

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
silent_exec $FLATPAK_INSTALL com.discordapp.Discord -y
#silent_exec $FLATPAK_INSTALL com.spotify.Client -y
#silent_exec $FLATPAK_INSTALL org.gnome.gitlab.somas.Apostrophe -y
#silent_exec $FLATPAK_INSTALL com.jetbrains.RubyMine -y

echo "Finished ==> Flatpak Apps"

echo "Setting vscode"

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
# update
#silent_exec $APT_INSTALL -y code

#echo "Setting rbenv"

#silent_exec $APT_INSTALL -y rbenv
#rbenv init

#echo "Setting dbeaver"

#$APT_INSTALL -y openjdk-11-jdk openjdk-11-jre
#wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | sudo apt-key add - echo "deb https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list
#sudo apt update -y && sudo apt upgrade -y && sudo apt clean -y && sudo apt autoclean -y && sudo apt autoremove -y
#silent_exec $APT_INSTALL dbeaver-ce

echo "Setting I3 configs"

mkdir ~/.config/i3/
cat ./i3_config > ~/.config/i3/config

echo "Setting Images"

cp -r ./images ~/Pictures

echo "Setting Fonts"

mkdir ~/.fonts

wget https://download.jetbrains.com/fonts/JetBrainsMono-2.242.zip -P ./.fonts/
wget https://github.com/tonsky/FiraCode/releases/download/5.2/Fira_Code_v5.2.zip -P ./.fonts/

unzip './.fonts/*.zip' -d ~/.fonts/
rm -rf ./.fonts/*.zip


# helpers

# Terminator theme
# git clone https://github.com/dracula/terminator.git
# ./install.sh

# Bash prefix
# if [ "$color_prompt" = yes ]; then
#     PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]· \w ·\[\033[00m\]\n\[\033[01;34m\]» \[\033[00m\] '
# else
#     PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
# fi

# TODO
# theme terminator
# parser bash
# alacritty
# docker
