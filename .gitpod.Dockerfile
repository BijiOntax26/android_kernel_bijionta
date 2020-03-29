FROM gitpod/workspace-full:latest
USER root
RUN apt-get update
RUN apt-get dist-upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" neofetch fish wget curl bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5-dev libsdl1.2-dev libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev
RUN wget https://raw.githubusercontent.com/akhilnarang/scripts/master/setup/android_build_env.sh && chmod +x android_build_env.sh && ./android_build_env.sh
RUN apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
RUN cd
USER root
