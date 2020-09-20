#/bin/bash
sudo apt update
sudo apt upgrade -y

# Enable Visual Studio Code to watch a large project for changes
sudo echo "fs.inotify.max_user_watches=524288" >> /etc/sysctl.conf
sudo sysctl -p

# Install aditional spotify media libraries
echo "Installing spotify aditional media libraries..."
git clone https://github.com/ramedeiros/spotify_libraries.git
cd spotify_libraries
sudo cp lib* /usr/lib/x86_64-linux-gnu/
sudo ln -frs /usr/lib/x86_64-linux-gnu/libavutil.so.52.6.100 /usr/lib/x86_64-linux-gnu/libavutil.so.52
sudo ln -frs /usr/lib/x86_64-linux-gnu/libavformat.so.54.36.100 /usr/lib/x86_64-linux-gnu/libavformat.so.54
sudo ln -frs /usr/lib/x86_64-linux-gnu/libavcodec.so.54.71.100 /usr/lib/x86_64-linux-gnu/libavcodec.so.54
sudo ldconfig
