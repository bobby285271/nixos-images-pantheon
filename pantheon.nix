{ pkgs, modulesPath, lib, ... }: {
  imports = [
    "${modulesPath}/installer/cd-dvd/installation-cd-graphical-base.nix"
  ];

  services.xserver.desktopManager.pantheon.enable = true;
  users.users.nixos.password = "nixos";

  services.xserver.displayManager.lightdm.extraConfig = ''
    [SeatDefaults]
    autologin-user=nixos
  '';
}
