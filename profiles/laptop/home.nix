{ lib, ... }:

{
  options = { deploy.profile.laptop = lib.mkEnableOption "lappytop" // { default = true; }; };
}
