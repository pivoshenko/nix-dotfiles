{
  lib,
  ...
}:

{
  qt = {
    style.name = lib.mkForce "kvantum";
    platformTheme.name = lib.mkForce "kvantum";
  };
}
