{
  pkgs,
  nix-colors,
  ...
}: let
  username = "sarw";
in {
  inherit username;
  password = username;
  full-name = "SARWAR";
  location = "Dhaka, Bangladesh";
  primary-email = "sarrwar16@gmail.com";

  # System configuration
  system = {
    hostname = "X";
  };

  # Define user configurations
  users = {
    sarw = {
      avatar = ./files/avatar/face.png;
      email = "sarrwar16@gmail.com";
      fullName = "SARWAR";
      gitKey = "0x2226229F5F5AB870";
      name = "sarw";
    };
  };

  # cat $(nix-build --no-out-link '<nixpkgs>' -A xkeyboard_config)/etc/X11/xkb/rules/base.lst
  keyMap = "us";
  timeZone = "Asia/Dhaka";
  defaultLocale = "en_US.UTF-8";
  region = "en_US.UTF-8";

  avatar-image =
    (pkgs.fetchurl {
      url = "https://gravatar.com/userimage/10402619/9d663d9a46ad2c752bf6cfeb93cff4fd.jpeg?size=512";
      sha256 = "sha256-raMsbyJQgf7JPMvZtAFOBIBwFg8V7HpmtERO9J/50qQ=";
    })
    .outPath;

  editor = "re.sonny.Commit";

  pubKeys = {
    url = "https://github.com/SrwR16.keys";
    sha256 = "0bsdc682c54ryz7vbd40gwj3d0gxysx22f98ypzzykln9kxnvx6v";
  };

  # fc-list : family
  fonts = {
    sizes.applications = 11;

    sansSerif = {
      name = "Inter";
      package = pkgs.inter;
    };

    serif = {
      name = "Roboto Slab";
      package = pkgs.roboto;
    };

    emoji = {
      name = "Twitter Color Emoji";
      package = pkgs.twitter-color-emoji;
    };

    monospace = {
      name = "JetBrainsMono Nerd Font";
      package = pkgs.nerd-fonts.jetbrains-mono;
    };
  };

  # https://catppuccin.com/palette
  # https://nico-i.github.io/scheme-viewer/base16/
  # https://github.com/tinted-theming/base16-schemes/
  # open file:///etc/stylix/palette.html
  colorScheme =
    pkgs.lib.attrsets.recursiveUpdate
    nix-colors.colorSchemes.catppuccin-mocha
    {
      palette.base0D = "fad000";
    };

  display = {
    width = 1920 * 2;
    height = 1080 * 2;
    windowSize = [1240 900];
    sidebarWidth = 200;
  };
}
