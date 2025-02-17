{ config, pkgs, lib, ... }:

{
  programs.git = {
    enable = true;
    userName = "kat witch";
    userEmail = "kat@kittywit.ch";
    extraConfig = {
      init = { defaultBranch = "main"; };
      protocol.gcrypt.allow = "always";
      annex = {
        autocommit = false;
        backend = "BLAKE2B512";
        synccontent = true;
      };
    };
    signing = {
      key = "01F50A29D4AA91175A11BDB17248991EFA8EFBEE";
      signByDefault = true;
    };
  };
}
