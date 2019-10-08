#!/bin/bash


mkdir -p ~/.mozilla/firefox/backup ~/.cache/mozilla/firefox/backup
 

mv ~/.mozilla/firefox/*.default/*.sqlite  ~/.mozilla/firefox/backup
mv ~/.mozilla/firefox/*.default/sessionstore.js ~/.mozilla/firefox/backup
mv ~/.cache/mozilla/firefox/*.default/* ~/.cache/mozilla/firefox/backup

rm ~/.mozilla/firefox/*.default/cookies.sqlite

rm ~/.mozilla/firefox/*.default/*.sqlite ~/.mozilla/firefox/*default/sessionstore.js
rm -r ~/.cache/mozilla/firefox/*.default/*


# google
# mkdir -p ~/.google/chrome/backup
# mv ~/.config/google-chrome/Default/ ~/.google/chrome/backup
# mv ~/.cache/google-chrome ~/.google/chrome/backup

# rm ~/.config/google-chrome/Default/
# rm ~/.cache/google-chrome
