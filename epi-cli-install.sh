curl -L "https://github.com/tuyen-at-work/dev-tools/releases/download/linux/epi-cli-x86_64-unknown-linux-gnu.7z" -o epi-cli.7z
7z x epi-cli.7z -bsp0 -bso0
rm epi-cli.7z
mkdir ~/bin
mv ./epi ~/bin/
chmod +x ~/bin/epi
echo "~/bin" >> $GITHUB_PATH