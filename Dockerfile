FROM base/archlinux

RUN pacman -Syu --noconfirm && pacman -S bash --noconfirm && COPY inits /sbin/inits && chmod +x /sbin/inits
  
 ENTRYPOINT ["/inits"]

#Expose ports
EXPOSE 43110  13984
