Section "ServerLayout"
    Identifier "layout"
    Screen 0 "nvidia"
    Inactive "amd"
EndSection

Section "Device"
    Identifier "nvidia"
    Driver "nvidia"
    BusID "PCI:1:0:0"
    Option "AllowEmptyInitialConfiguration"
    Option "PrimaryGPU" "yes"
EndSection

Section "Device"
    Identifier "amd"
    Driver "amdgpu"
    BusID "PCI:0:2:0"
EndSection

Section "Screen"
    Identifier "nvidia"
    Device "nvidia"
EndSection

Section "Screen"
    Identifier "amd"
    Device "amd"
EndSection
