sudo pacman -Syu

function pacmaninstall {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo pacman -S $1 --noconfirm
  else
    echo "Already installed: ${1}"
  fi
}

pacmaninstall discord
pacmaninstall steam
pacmaninstall curl
pacmaninstall code
pacmaninstall spotify-launcher




curl -fsSL https://raw.githubusercontent.com/spicetify/cli/main/install.sh | sh
curl -fsS https://dl.brave.com/install.sh | sh