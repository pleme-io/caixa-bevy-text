# nix/modules/home-manager.nix — auto-generated from bevy_text.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.bevy_text; in {
  options.programs.bevy_text = {
    enable = lib.mkEnableOption "bevy_text";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_text or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
