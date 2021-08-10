#!/bin/sh


# print banner
 banner_path="$PWD/lib/banner"
cat $banner_path
echo "closing moc..."
killall mocp
echo "seting music directory..."
rm -f ~/.moc/last_directory
echo $1 >> ~/.moc/last_directory
echo "copying theme to /usr/share/moc/themes ..."
theme_path="$PWD/lib/pi5hi_theme"
sudo cp $theme_path /usr/share/moc/themes
echo "set the config..."
rm -f ~/.moc/config
echo "Theme = /usr/share/moc/themes/pi5hi_theme" >> ~/.moc/config
echo "XTermTheme = /usr/share/moc/themes/pi5hi_theme" >> ~/.moc/config



