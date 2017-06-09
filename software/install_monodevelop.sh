sudo apt update && sudo apt install flatpak -t jessie-backports -y
flatpak install --user --from https://download.mono-project.com/repo/monodevelop.flatpakref 
sudo apt install xterm 
cp -v /usr/bin/xterm ~/.local/share/flatpak/app/com.xamarin.MonoDevelop/current/active/files/bin/
cp -v /usr/lib/x86_64-linux-gnu/libXaw* ~/.local/share/flatpak/app/com.xamarin.MonoDevelop/current/active/files/lib/
cp -v /usr/lib/x86_64-linux-gnu/libXmu* ~/.local/share/flatpak/app/com.xamarin.MonoDevelop/current/active/files/lib/
cp -v /usr/lib/x86_64-linux-gnu/libutempter.* ~/.local/share/flatpak/app/com.xamarin.MonoDevelop/current/active/files/lib/
cp -v /usr/lib/libutempter.* ~/.local/share/flatpak/app/com.xamarin.MonoDevelop/current/active/files/lib/
cp -v /lib/x86_64-linux-gnu/libpng12* ~/.local/share/flatpak/app/com.xamarin.MonoDevelop/current/active/files/lib/
cp -v /lib/x86_64-linux-gnu/libtinfo* ~/.local/share/flatpak/app/com.xamarin.MonoDevelop/current/active/files/lib/
