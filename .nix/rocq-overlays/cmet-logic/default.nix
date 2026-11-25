## Local package definition for this development.
## It is not in nixpkgs; the coq-nix-toolbox overrides `version` with the
## local sources when building the main job.
## Doc: https://nixos.org/manual/nixpkgs/stable/#sec-language-coq

{
  lib,
  mkRocqDerivation,
  mathcomp-analysis,
  version ? null,
}:

mkRocqDerivation {
  pname = "cmet-logic";
  owner = "abruni";
  repo = "cmet-logic";

  inherit version;
  ## No release: the version is always given explicitly (the local sources).
  defaultVersion = null;

  propagatedBuildInputs = [ mathcomp-analysis ];

  meta = {
    description = "A logic over complete metric spaces, formalized in Rocq on top of MathComp Analysis";
  };
}
