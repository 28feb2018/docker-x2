FROM alpine
RUN apk add --no-cache xorg-server xf86-video-vesa xf86-video-modesetting xf86-video-nouveau xf86-video-intel xf86-input-evdev xf86-input-mouse xf86-input-keyboard
RUN apk add --no-cache xf86-input-synaptics
RUN apk add --no-cache fvwm dbus openrc
RUN apk add --no-cache eudev
RUN echo fvwm > /root/.xinitrc
