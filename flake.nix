{
  description = "Expense Tracker nix dev environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = import nixpkgs {inherit system;};
      in {
        devShells.default = pkgs.mkShell {
          buildInputs = [
            pkgs.nodejs_20
            pkgs.postgresql
            pkgs.yarn
          ];
          shellHook = ''
            echo "Node.js version: $(node --version)"
            echo "PostgreSQL version: $(psql --version)"
          '';
        };
      }
    );
}
