FROM greyltc/lamp
RUN pacman -Syu --noconfirm && pacman -Syu git --noconfirm
RUN rm -rf /srv/http
RUN git clone https://github.com/demonrik/HDHR-DVRUI.git ./temp \
    && mkdir /srv/http \
    && cd ./temp/app \
    && cp -R . /srv/http
ENV APACHE_ENABLE_PORT_80=true
EXPOSE 80
