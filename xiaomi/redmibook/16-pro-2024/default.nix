{ lib, ... }:
{
  imports = [
    ../../fix-boot-quirk.nix
    ../../../common/cpu/intel
    ../../../common/pc/laptop
    ../../../common/pc/ssd
  ];

  hardware.enableRedistributableFirmware = lib.mkDefault true;

  services.thermald.enable = lib.mkDefault true;
}
