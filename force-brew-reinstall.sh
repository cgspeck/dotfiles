#! /bin/bash -e
echo
echo "POST OS-X UPGRADE RECOVERY"
echo
echo "****************************************************"
echo "Running brew bundle which won't actually do anything"
echo "****************************************************"
echo
brew bundle
echo
echo "****************************************************"
echo "              Reinstalling packages"
echo "****************************************************"
echo
grep ^brew Brewfile | cut -d' ' -f2 | cut -d',' -f1 | xargs brew reinstall
echo
echo "****************************************************"
echo "                   Reinstalling casks"
echo "****************************************************"
grep ^cask Brewfile | cut -d' ' -f2 | xargs brew cask reinstall
