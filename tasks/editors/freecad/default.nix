{ ... }:

{
	perSystem = { inputs', lib, pkgs, ... }: {
		mission-control.scripts = {
			freecad = {
				description = "Open repository-standardized FreeCAD version";
				category = "Integrated Development Environments";
				exec = "${inputs'.nixpkgs.legacyPackages.freecad}/bin/freecad \"$FLAKE_ROOT/src/b48-bike-thing.FCStd\"";
			};
		};
	};
}
