_: {
  # This file can be used to override the generated hardware-configuration.nix filesystem settings
  # Currently keeping the generated hardware-configuration.nix settings as-is

  # If you want to add additional mount points or modify settings, you can do so here
  # For example:
  # fileSystems."/mnt/storage" = {
  #   device = "/dev/disk/by-label/Storage";
  #   options = ["nosuid" "nodev" "nofail" "x-gvfs-show"];
  #   fsType = "ext4";
  # };

  # Currently using the defaults from hardware-configuration.nix
  # - Root (/) on /dev/nvme0n1p8 (ext4)
  # - Boot (/boot) on /dev/nvme0n1p4 (vfat)
  # - Swap on /dev/nvme0n1p7 (swap partition)
}
