# Nvidia-étendre-cran

Configuration pour étendre son écran kali ou Parrot (Linux)
Installer Nvidia prime, cherchez sur le net en suite suivez ces étapes:

1. installer nvidia-settings:
sudo nvidia-settings

2. Installez prime-select si nécessaire
sudo apt install nvidia-prime

3. Basculer vers le GPU NVIDIA
sudo prime-select nvidia

4. Le fait que vous utilisez une configuration avec un GPU AMD et un GPU NVIDIA peut affecter la manière dont vous configurez les paramètres d'affichage
a. Pour les systèmes hybrides AMD/NVIDIA, il est crucial que les pilotes pour les deux GPU soient correctement installés:
sudo apt update
sudo apt install firmware-amd-graphics

b. Installer les pilotes NVIDIA
sudo apt update
sudo apt install nvidia-driver

c. Réinitialisez l'affichage actuel
xrandr --output eDP --auto

d.  Ajoutez l'écran extern
xrandr --output DP-1-0 --auto --right-of eDP

5. Redémarrez le système avec "init 6" ou simple reboot
sudo reboot

6. Créer ou éditer le fichier de configuration NVIDIA
sudo nano /etc/X11/xorg.conf.d/20-nvidia.conf

7. Ajouter (de ma part je l'ai crée) ou modifier les sections suivantes pour désactiver Reverse PRIME
coller le script (file.sh) dans votre nouveau fichier 20-nvidia.conf
8. Redémarrez le serveur X ou redémarrez le système (de ma part le système)
sudo systemctl restart lightdm
