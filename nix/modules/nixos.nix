# nix/modules/nixos.nix — auto-generated from bevy_text.caixa.lisp
# description: "Provides text functionality for Bevy Engine"
{ config, lib, pkgs, ... }:
let
  cfg = config.services.bevy_text;
in {
  options.services.bevy_text = {
    enable = lib.mkEnableOption "bevy_text";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.bevy_text or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
