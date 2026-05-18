{
  pkgs ? import <nixpkgs> { },
  inputs ? null,
  ...
}:

pkgs.mkShell {

  packages = with pkgs; [
    (inputs.zephyr-nix.packages.x86_64-linux.sdk.override {
      targets = [
        "arm-zephyr-eabi"
      ];
    }

    )
    inputs.zephyr-nix.packages.x86_64-linux.pythonEnv
    # Use zephyr.hosttools-nix to use nixpkgs built tooling instead of official Zephyr binaries
    inputs.zephyr-nix.packages.x86_64-linux.hosttools
    cmake
    ninja
  ];

}
