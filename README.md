# Useful_Linux_Hacks
  
## Terminal displays no colors
It happens because you have replaced your .bashrc file.
Copy a new .bashrc with:
```
mv ~/.bashrc ~/.bashrc.old
cp /etc/skel/.bashrc ~/.bashrc
```
