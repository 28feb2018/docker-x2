FROM debian
RUN apt-get update && apt-get install -qqy xserver-xorg xorg jwm x11-apps
