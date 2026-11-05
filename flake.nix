{
  description = "Environnement de développement Haskell complet";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      supportedSystems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
    in
    {
      devShells = forAllSystems (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in {
          default = pkgs.mkShell {
            # Les paquets installés dans l'environnement de développement
            buildInputs = [
              pkgs.ghc
              pkgs.cabal-install
              pkgs.haskell-language-server
            ];

            # Variables d'environnement optionnelles pour aider Cabal sous Nix
            shellHook = ''
              echo "Welcome to your Haskell development environment!"
              echo "GHC Version: $(ghc --version)"
              echo "Cabal Version: $(cabal --version)"
            '';
          };
        });
    };
}
