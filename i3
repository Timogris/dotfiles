# This file has been auto-generated by i3-config-wizard(1).
# It will not be overwritten, so edit it as you like.
#
# Should you change your keyboard layout some time, delete
# this file and re-run i3-config-wizard(1).
#

# i3 config file (v4)
#
# Please see https://i3wm.org/docs/userguide.html for a complete reference!

set $mod Mod4

# Colors values
set $bg-color       "#000000"   #background
set $text-color     "#ffffff"   #text

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
font pango:overpass 12

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# start a terminal
bindsym $mod+Return exec i3-sensible-terminal

# kill focused window
bindsym $mod+q kill

# start rofi (a program launcher)
bindsym $mod+d exec rofi -show run -font "Inconsolata 18" -lines 3 
# change focus
bindsym $mod+j focus left
bindsym $mod+k focus down
bindsym $mod+l focus up
bindsym $mod+m focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+j move left
bindsym $mod+Shift+k move down
bindsym $mod+Shift+l move up
bindsym $mod+Shift+m move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+h split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+z layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+shift+a focus parent

# focus the child container
#bindsym $mod+d focus child

set $workspace1 "1:"
set $workspace2 "2:"
set $workspace3 "3:"
set $workspace4 "4:"
set $workspace10 "10:"
# switch to workspace
bindsym $mod+ampersand workspace $workspace1 
bindsym $mod+eacute workspace $workspace2 
bindsym $mod+quotedbl workspace $workspace3
bindsym $mod+apostrophe workspace $workspace4
bindsym $mod+parenleft workspace 5
bindsym $mod+minus workspace 6
bindsym $mod+egrave workspace 7
bindsym $mod+underscore workspace 8
bindsym $mod+ccedilla workspace 9
bindsym $mod+agrave workspace $workspace10

# move focused container to workspace
bindsym $mod+Shift+ampersand move container to workspace $workspace1
bindsym $mod+Shift+eacute move container to workspace $workspace2
bindsym $mod+Shift+quotedbl move container to workspace $workspace3
bindsym $mod+Shift+apostrophe move container to workspace $workspace4
bindsym $mod+Shift+5 move container to workspace 5
bindsym $mod+Shift+minus move container to workspace 6
bindsym $mod+Shift+egrave move container to workspace 7
bindsym $mod+Shift+underscore move container to workspace 8
bindsym $mod+Shift+ccedilla move container to workspace 9
bindsym $mod+Shift+agrave move container to workspace $workspace10

# reload the configuration file
bindsym $mod+Shift+c reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart
# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym j resize shrink width 10 px or 10 ppt
        bindsym k resize grow height 10 px or 10 ppt
        bindsym l resize shrink height 10 px or 10 ppt
        bindsym m resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

bindsym $mod+r mode "resize"

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
#bar de backup
bar {
        status_command i3status
        mode hide
        strip_workspace_numbers yes
        position top
}

# cacher les bords
new_window 1pixel

# i3-gaps settings

# pas de bords bleus
for_window [class="^.*"] border pixel 0

# gaps
gaps inner 15

#smart_gaps on

# wallpaper
exec_always feh --bg-fill ~/Pictures/wallpapers/wallpaper.jpg

# Media controls

bindsym XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-volume 0 +5% #increase sound volume
bindsym XF86AudioLowerVolume exec --no-startup-id pactl set-sink-volume 0 -5% #decrease sound volume
bindsym XF86AudioMute exec --no-startup-id pactl set-sink-mute 0 toggle # mute sound

# Sreen brightness controls
bindsym XF86MonBrightnessUp exec xbacklight -inc 10 # increase screen brightness
bindsym XF86MonBrightnessDown exec xbacklight -dec 10 # decrease screen brightness

# Touchpad controls
bindsym XF86TouchpadToggle exec /some/path/toggletouchpad.sh # toggle touchpad

# Media player controls
bindsym XF86AudioPlay exec playerctl play
bindsym XF86AudioPause exec playerctl pause
bindsym XF86AudioNext exec playerctl next
bindsym XF86AudioPrev exec playerctl previous

# NetworkManager
exec --no-startup-id nm-applet

# aesthetics
exec_always compton

# i3lock
exec_always xset b off
bindsym $mod+x exec ~/.i3/scripts/i3lock/lock2.sh
