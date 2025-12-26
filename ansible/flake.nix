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
      devShells.${system}.default = pkgs.mkShell {
        packages = [
          pkgs.python312
          pkgs.bws
        ];

        shellHook = ''
          [ ! -d .venv ] && python3 -m venv .venv
          source .venv/bin/activate
          [ -f requirements.txt ] && pip install -r requirements.txt
        '';
      };
    };
}
