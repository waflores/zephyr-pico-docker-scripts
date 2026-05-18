{
  description = "A very basic Zephyr flake";

  # Add all your dependencies here
  inputs = {
    nixpkgs.url = "https://github.com/NixOS/nixpkgs/archive/64e79a178cb8eab2485e676ec40195d1818b5c09.tar.gz"; # master - 2026-05-17

    blueprint.inputs.nixpkgs.follows = "nixpkgs";
    blueprint.url = "https://github.com/numtide/blueprint/archive/56131e8628f173d24a27f6d27c0215eff57e40dd.tar.gz"; # main - 2026-05-17

    devshell.inputs.nixpkgs.follows = "nixpkgs";
    devshell.url = "https://github.com/numtide/devshell/archive/255a2b1725a20d060f566e4755dbf571bbbb5f76.tar.gz";

    treefmt-nix.inputs.nixpkgs.follows = "nixpkgs";
    treefmt-nix.url = "https://github.com/numtide/treefmt-nix/archive/790751ff7fd3801feeaf96d7dc416a8d581265ba.tar.gz"; # main - 2026-05-17

    # Customize the version of Zephyr used by the flake here
    zephyr.url = "github:zephyrproject-rtos/zephyr/v3.5.0";
    zephyr.flake = false;

    zephyr-nix.url = "github:nix-community/zephyr-nix";
    zephyr-nix.inputs.nixpkgs.follows = "nixpkgs";
    zephyr-nix.inputs.zephyr.follows = "zephyr";
  };

  # Load the blueprint
  outputs = inputs: inputs.blueprint { inherit inputs; };
}
