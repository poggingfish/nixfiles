mkdir -p "etc"
mkdir -p "etc/nix"
mkdir -p "etc/nixos"
cp /etc/nix/* etc/nix
sudo cp /etc/nixos/* etc/nixos
sudo chmod a+rw etc/nixos/*
sudo chmod a+rw etc/nix/*
