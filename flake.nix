{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs =
    { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
    in
    {
      devShells.${system} = {
        default = pkgs.mkShell {
          packages = [
            pkgs.pre-commit
            pkgs.yamllint
            pkgs.gitleaks
          ];
        };

        shellHook = ''
          pre-commit install
        '';
      };
    };
}
