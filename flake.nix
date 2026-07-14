{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-25.11";
  };

  outputs = { self, nixpkgs }: {
    nixosConfigurations.justkinou = nixpkgs.lib.nixosSystem {
      modules = [ ./configuration.nix ];
    };
  };
}
