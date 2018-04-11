FROM alpine
RUN apk add --no-cache xorg-server xf86-video-vesa xf86-video-modesetting xf86-video-nouveau xf86-video-intel xf86-input-evdev xf86-input-mouse xf86-input-keyboard
RUN apk add --no-cache xf86-input-synaptics

ENV WM=jwm
RUN apk add --no-cache eudev
RUN apk add --no-cache ${WM} dbus openrc

RUN echo "udevd & sleep 1"  >  /root/start.sh
RUN echo "udevadm trigger"  >> /root/start.sh
RUN echo "startx"           >> /root/start.sh

RUN echo fvwm               > /root/.xinitrc
