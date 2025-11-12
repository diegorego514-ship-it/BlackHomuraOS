#!/bin/bash
echo "🧵 Weaving your destiny..."
sleep 1
echo "🌀 Control the chaos. Rewrite the timeline."

# Instala pacotes essenciais
sudo apt install i3 alacritty thunar python3 git fonts-firacode -y

# Se a pasta já existir, atualiza em vez de clonar
if [ -d ~/BlackHomuraOS ]; then
  cd ~/BlackHomuraOS
  git pull
else
  git clone https://github.com/seuusuario/BlackHomuraOS ~/BlackHomuraOS
fi

# Copia temas se existirem
if [ -d ~/BlackHomuraOS/themes ]; then
  cp -r ~/BlackHomuraOS/themes/* ~/.config/
  echo "✨ Themes applied."
else
  echo "⚠️ Nenhum tema encontrado em ~/BlackHomuraOS/themes"
fi

echo "✨ Installation complete. Welcome to BlackHomuraOS."

