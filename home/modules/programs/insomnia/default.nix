{
  pkgs,
  ...
}:

let
  insomnia-catppuccin = pkgs.stdenv.mkDerivation {
    pname = "insomnia-plugin-catppuccin";
    version = "local";

    src = pkgs.fetchFromGitHub {
      owner = "catppuccin";
      repo = "insomnia";
      rev = "main";
      sha256 = "sha256-HC+nknnnOhtYU3XP8k2tlC7QwSgX2sViZHRMa5E0XYk=";
    };

    buildInputs = [
      pkgs.nodejs
      pkgs.nodePackages.npm
    ];

    buildPhase = ''
      npm install --production
    '';

    installPhase = ''
      mkdir -p $out
      cp -r . $out/
    '';
  };
in
{
  xdg.configFile."Insomnia/plugins/insomnia-plugin-catppuccin" = {
    source = insomnia-catppuccin;
    recursive = true;
  };
}
